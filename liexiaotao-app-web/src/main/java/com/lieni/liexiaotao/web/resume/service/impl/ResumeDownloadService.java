package com.lieni.liexiaotao.web.resume.service.impl;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.zip.GZIPInputStream;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.MapUtils;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.lieni.basedata.bean.IndustryBean;
import com.lieni.basedata.bean.Location;
import com.lieni.basedata.remote.IBasedataRemoteService;
import com.lieni.core.Constants;
import com.lieni.core.util.CalcUtil;
import com.lieni.core.util.DateTimeUtil;
import com.lieni.file.remote.IFileRemoteService;
import com.lieni.file.remote.IScaleImageRemoteService;
import com.lieni.liexiaotao.api.resume.exception.ResumeException;
import com.lieni.liexiaotao.api.resume.remote.IResumePurchaseRemoteService;
import com.lieni.liexiaotao.web.resume.service.IResumeContentService;
import com.lieni.liexiaotao.web.resume.service.IResumeDownloadService;
import com.lieni.liexiaotao.web.resume.view.BackgroungSurveyView;
import com.lieni.liexiaotao.web.resume.view.DownJobIntentionView;
import com.lieni.liexiaotao.web.resume.view.DownResumeInfoView;
import com.lieni.liexiaotao.web.resume.view.EducationExperienceView;
import com.lieni.liexiaotao.web.resume.view.JobIntentionView;
import com.lieni.liexiaotao.web.resume.view.LanguageView;
import com.lieni.liexiaotao.web.resume.view.ProductView;
import com.lieni.liexiaotao.web.resume.view.ProjectExperienceView;
import com.lieni.liexiaotao.web.resume.view.ResumeEducationBackgroundView;
import com.lieni.liexiaotao.web.resume.view.ResumeInfoView;
import com.lieni.liexiaotao.web.resume.view.ResumeReportView;
import com.lieni.liexiaotao.web.resume.view.ResumeWorkBackgroundView;
import com.lieni.liexiaotao.web.resume.view.TrainingExperienceView;
import com.lieni.liexiaotao.web.resume.view.WorkExperienceView;
import com.lieni.resume.bean.Gender;

import freemarker.template.Configuration;
import freemarker.template.Template;
import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.Thumbnails.Builder;

@Service
public class ResumeDownloadService implements IResumeDownloadService {

    private static Logger logger = LoggerFactory.getLogger(ResumeDownloadService.class);

    @Autowired
    private IResumePurchaseRemoteService resumePurchaseRemoteService;
    @Autowired
    private IBasedataRemoteService basedataRemoteService;
    @Autowired
    private IResumeContentService resumeContentService;
    @Autowired
    private IFileRemoteService degreeFileRemoteService;
    @Autowired
    private IScaleImageRemoteService avatarImageRemoteService;

    @Value("${gentleman}")
    private String gentleman;
    @Value("${lady}")
    private String lady;
    @Value("${currentNow}")
    private String currentNow;
    @Value("${yearName}")
    private String yearName;
    @Value("${monthName}")
    private String monthName;

    @Override
    public void download(String userId, String resumeId, HttpServletResponse response) throws ResumeException {

        if (StringUtils.isBlank(resumeId) || StringUtils.isBlank(userId)) {
            throw new ResumeException(ResumeException.ILLEGAL_OPERATION);
        }
        // 1. 判断当前登录人是否购买了这份简历
        // 1.1 未购买， 当前简历的最新版本信息数据下载
        // 1.2 购买了，购买记录里对应的简历下载，可以看联系方式以及背调等信息
        Map<String, Object> dataMap = dealResumeData(userId, resumeId);
        // 2. 模板加载
        dealTemplate(response, dataMap);

    }

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉图片字节码压缩
     *
     * @param picByte 图片的字节码
     * @return 压缩后的图片字节码
     */
    private byte[] decompressPicByte(byte[] picByte) {
        ByteArrayInputStream intputStream = new ByteArrayInputStream(picByte);
        Builder<? extends InputStream> builder = Thumbnails.of(intputStream).scale(0.5);
        try {
            BufferedImage bufferedImage = builder.asBufferedImage();
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write(bufferedImage, "jpeg", baos);
            byte[] byteArray = baos.toByteArray();
            return byteArray;
        } catch (IOException e) {
            logger.error(" compression pic byte error===>" + e.getMessage(), e);
        }
        return picByte;

    }

    public static String DecompressToBase64(String textToDecode) {
        // String textToDecode = "H4sIAAAAAAAAAPNIzcnJBwCCidH3BQAAAA==\n";
        try {
            byte[] compressed = Base64.decodeBase64(textToDecode);
            final int BUFFER_SIZE = 32;
            ByteArrayInputStream inputStream = new ByteArrayInputStream(compressed);

            GZIPInputStream gis = new GZIPInputStream(inputStream, BUFFER_SIZE);

            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            byte[] data = new byte[BUFFER_SIZE];
            int bytesRead;
            while ((bytesRead = gis.read(data)) != -1) {
                baos.write(data, 0, bytesRead);
            }

            return baos.toString("UTF-8");
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception ex) {

        }
        return "";
    }

    private Map<String, Object> dealResumeData(String userId, String resumeId) {

        boolean purchaseFlag = resumePurchaseRemoteService.exist(userId, resumeId);
        // 1. 数据准备
        Map<String, Object> dataMap = new HashMap<>();
        dataMap.put("show", purchaseFlag ? 1 : 0);// 是否购买
        // 基本信息
        DownResumeInfoView resumeInfoView = this.dealResumeInfo(userId, resumeId, purchaseFlag);
        dataMap.put("infoView", resumeInfoView);
        if (StringUtils.isNoneBlank(resumeInfoView.getHeadUrl())) {
            byte[] data = avatarImageRemoteService.download(resumeInfoView.getHeadUrl());
            if (null != data) {
                long length = data.length;
                if (length > 1024) {
                    data = decompressPicByte(data);
                }
                Base64 encoder = new Base64();
                // 用户头像
                String body_userPicStr = encoder.encodeAsString(data);
                dataMap.put("headPic", body_userPicStr);
            }
        }

        // 求职意向
        DownJobIntentionView jobIntentionView = this.dealJobIntention(userId, resumeId);
        dataMap.put("jobIntentionView", jobIntentionView);
        // 教育经历
        List<EducationExperienceView> educationListViews = resumeContentService.listEducationExperience(userId,
                resumeId);
        if (CollectionUtils.isNotEmpty(educationListViews)) {
            dataMap.put("educationListViews", educationListViews);
        }
        // 工作经历
        List<WorkExperienceView> workExperienceListViews = this.dealWorkExperience(userId, resumeId);
        if (CollectionUtils.isNotEmpty(workExperienceListViews)) {
            dataMap.put("workExperienceListViews", workExperienceListViews);
        }
        // 项目经验
        List<ProjectExperienceView> projectExperienceListViews = this.dealProjectExperience(userId, resumeId);
        if (CollectionUtils.isNotEmpty(projectExperienceListViews)) {
            dataMap.put("projectExperienceListViews", projectExperienceListViews);
        }
        // 语言能力
        List<LanguageView> languageListViews = resumeContentService.listLanguageAbility(userId, resumeId);
        if (CollectionUtils.isNotEmpty(languageListViews)) {
            dataMap.put("languageListViews", languageListViews);
        }
        // 培训经历
        List<TrainingExperienceView> trainingExperienceListViews = this.dealTrainingExperience(userId, resumeId);
        if (CollectionUtils.isNotEmpty(trainingExperienceListViews)) {
            dataMap.put("trainingExperienceListViews", trainingExperienceListViews);
        }
        // 附件作品
        List<ProductView> productListViews = resumeContentService.listProduct(userId, resumeId);
        if (CollectionUtils.isNotEmpty(productListViews)) {
            for (ProductView productView : productListViews) {
                if (null != productView.getProductType() && productView.getProductType() == 1) {
                    String productName = productView.getProductName();
                    if (StringUtils.isBlank(productName)) {
                        continue;
                    }
                    int lastIndexOf = productName.lastIndexOf(".");
                    String substring = productName.substring(0, lastIndexOf);
                    productView.setProductName(substring);
                }
            }

            dataMap.put("productListViews", productListViews);
        }
        ResumeReportView resumeReportListViews = null;

        List<ResumeEducationBackgroundView> resumeEducationBackgroundListViews = new ArrayList<>();
        // List<DownResumeWorkBgRespondentView> resumeWorkBackgroundListView = new ArrayList<>();
        List<ResumeWorkBackgroundView> resumeWorkBackgroundListView = new ArrayList<>();
        if (purchaseFlag) {
            // 猎头评语
            resumeReportListViews = resumeContentService.getResumeReportViewByUserIdAndResumeId(userId, resumeId);
            // 简历背调
            BackgroungSurveyView backgroungSurveys = resumeContentService
                    .getBackgroungSurveysByUserIdAndResumeId(userId, resumeId);
            if (null != backgroungSurveys) {
                // 教育背调
                resumeEducationBackgroundListViews = backgroungSurveys.getEducationBackgrounds();
                if (CollectionUtils.isNotEmpty(resumeEducationBackgroundListViews)) {
                    resumeEducationBackgroundListViews = this
                            .dealEducationBackground(resumeEducationBackgroundListViews);
                }
                // 工作背调==>里面的每一份工作的背调
                List<ResumeWorkBackgroundView> workBackgrounds = backgroungSurveys.getWorkBackgrounds();
                if (CollectionUtils.isNotEmpty(workBackgrounds)) {
                    resumeWorkBackgroundListView = this.dealWorkBackground(workBackgrounds);
                }
            }
        }

        if (null != resumeReportListViews) {
            // 猎头评语
            dataMap.put("resumeReportListViews", resumeReportListViews);
        }
        if (CollectionUtils.isNotEmpty(resumeWorkBackgroundListView)) {
            // 工作背调
            dataMap.put("resumeWorkBackgroundListView", resumeWorkBackgroundListView);
        }
        if (CollectionUtils.isNotEmpty(resumeEducationBackgroundListViews)) {
            // 教育背调
            dataMap.put("resumeEducationBackgroundListViews", resumeEducationBackgroundListViews);
        }
        return dataMap;
    }

    private void dealTemplate(HttpServletResponse response, Map<String, Object> dataMap) {

        Configuration configuration = new Configuration();
        configuration.setDefaultEncoding(Constants.UTF8);
        configuration.setClassForTemplateLoading(ResumeService.class, "/template");
        Template t = null;
        try {
            t = configuration.getTemplate("resume_info_template.ftl");
        } catch (IOException e) {

        }
        StringBuffer docName = new StringBuffer();
        DownResumeInfoView resumeInfoView = (DownResumeInfoView) dataMap.get("infoView");
        // 文件名
        if (null != resumeInfoView) {
            String currentPosition = resumeInfoView.getCurrentPosition();
            String name = resumeInfoView.getName();
            docName.append(currentPosition).append(com.lieni.core.util.StringUtils.HYPHEN).append(name)
                    .append(com.lieni.core.util.StringUtils.HYPHEN);
        }
        docName.append(DateTimeUtil.dateString(new Date(), "yyyy-MM-dd"));
        docName.append(".doc");
        String targetFileName;
        try {
            targetFileName = URLEncoder.encode(docName.toString().replace(" ", ""), Constants.UTF8);
        } catch (UnsupportedEncodingException e1) {
            logger.error("targetFileName error ==> ", e1);
            targetFileName = UUID.randomUUID().toString().replace(com.lieni.core.util.StringUtils.HYPHEN, "");
        }
        // response.setContentType("application/msword;charset=UTF-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/msword");
        response.setHeader("Content-disposition", "attachment;filename=" + targetFileName);
        response.addHeader("Pragma", "no-cache");
        response.addHeader("Cache-Control", "no-cache");
        response.addDateHeader("Expries", 0);
        Writer wrter = null;
        try {
            wrter = new OutputStreamWriter(response.getOutputStream(), "utf-8");
            t.process(dataMap, wrter);
            wrter.flush();
        } catch (Exception ex) {
        } finally {
            if (null != wrter) {
                try {
                    wrter.close();
                } catch (IOException e) {
                }
            }
        }
    }

    private DownResumeInfoView dealResumeInfo(String userId, String resumeId, boolean purchaseFlag) {

        ResumeInfoView resumeInfoView = resumeContentService.getResumeInfoView(userId, resumeId);
        if (null == resumeInfoView) {
            return null;
        }

        DownResumeInfoView downResumeInfoView = new DownResumeInfoView(resumeInfoView);
        if (!purchaseFlag) {// 未购买
            Integer genderValue = downResumeInfoView.getGender();
            String name = resumeInfoView.getName();
            if (StringUtils.isNoneBlank(name)) {
                downResumeInfoView.setName(
                        name.substring(0, 1) + (Gender.getByValue(genderValue) == Gender.MAN ? gentleman : lady));
            }
            downResumeInfoView.setPhone(StringUtils.EMPTY);
            downResumeInfoView.setEmail(StringUtils.EMPTY);
            downResumeInfoView.setHeadUrl(StringUtils.EMPTY);
        }
        // 头像处理
        // if (StringUtils.isNoneBlank(downResumeInfoView.getHeadUrl())) {
        // byte[] download = avatarImageRemoteService.download(downResumeInfoView.getHeadUrl());
        // long length = download.length;
        // if (length < 1024 * 500) {
        // Base64 encoder = new Base64();
        // // BASE64Encoder encoder = new BASE64Encoder();
        // // 用户头像
        // String body_userPicStr = encoder.encodeAsString(download);
        // // String body_userPicStr = null == download ? "" : encoder.encode(download);
        // if (StringUtils.isNoneEmpty(body_userPicStr)) {
        // downResumeInfoView.setHeadUrl(body_userPicStr);
        // }
        // } else {
        // downResumeInfoView.setHeadUrl(StringUtils.EMPTY);
        // }
        // }
        // 年龄 ，
        Integer birthYear = downResumeInfoView.getBirthYear();
        if (null != birthYear) {
            downResumeInfoView.setAge(DateTimeUtil.getCurrentYear(new Date()) - birthYear);
        }
        System.out.println("=========>" + downResumeInfoView.getHeadUrl() + "<=========");
        // 所在地区
        Map<Integer, Location> locationMap = basedataRemoteService.getLocationMap();
        if (MapUtils.isNotEmpty(locationMap)) {
            // 工作城市
            StringBuffer sb = new StringBuffer();
            Location locationProvince = locationMap.get(downResumeInfoView.getWorkProvince().intValue());// 所在省
            if (null != locationProvince) {
                sb.append(locationProvince.getName());
            }
            Location locationCity = locationMap.get(downResumeInfoView.getWorkCity().intValue());// 所在市
            if (null != locationCity) {
                sb.append(com.lieni.core.util.StringUtils.HYPHEN + locationCity.getName());
            }
            downResumeInfoView.setWorkAddress(sb.toString());
            // 户籍城市
            StringBuffer sbHome = new StringBuffer();
            Location homeProvince = locationMap.get(downResumeInfoView.getWorkProvince().intValue());// 所在省
            if (null != homeProvince) {
                sbHome.append(homeProvince.getName());
            }
            Location homeCity = locationMap.get(downResumeInfoView.getWorkCity().intValue());// 所在市
            if (null != homeCity) {
                sbHome.append(com.lieni.core.util.StringUtils.HYPHEN + homeCity.getName());
            }
            downResumeInfoView.setHometownAddress(sbHome.toString());

        }
        // 处理最高学历
        // Integer degree = resumeInfoView.getHighestDegree();// 最高学历
        // 目前薪资
        Integer currentSalary = downResumeInfoView.getCurrentSalary();
        if (null != currentSalary) {
            downResumeInfoView.setCurrentSalaryStr(String.valueOf(CalcUtil.div(currentSalary, 10000)));
        }
        return downResumeInfoView;

    }

    private DownJobIntentionView dealJobIntention(String userId, String resumeId) {

        JobIntentionView jobIntentionView = resumeContentService.getJobIntentionViewByUserIdAndResumeId(userId,
                resumeId);
        if (null == jobIntentionView) {
            return null;
        }
        DownJobIntentionView downJobIntentionView = new DownJobIntentionView(jobIntentionView);
        // 处理期望职位
        String[] expectPosition = downJobIntentionView.getExpectPosition();
        if (ArrayUtils.isNotEmpty(expectPosition)) {
            StringBuffer sb = new StringBuffer();
            for (String string : expectPosition) {
                sb.append(string + " ");
            }
            downJobIntentionView.setExpectPositionStr(sb.toString());
        }
        // 处理期望行业
        String[] expectIndustrys = downJobIntentionView.getExpectIndustry();
        if (ArrayUtils.isNotEmpty(expectIndustrys)) {
            Map<Integer, IndustryBean> industryMap = basedataRemoteService.getIndustryMap();
            if (MapUtils.isNotEmpty(industryMap)) {
                StringBuffer sb = new StringBuffer();
                for (String expectIndustry : expectIndustrys) {
                    if (StringUtils.isBlank(expectIndustry)) {
                        continue;
                    }
                    IndustryBean industryBean = industryMap.get(Integer.valueOf(expectIndustry));
                    if (null == industryBean) {
                        continue;
                    }
                    sb.append(industryBean.getName() + " ");
                }
                downJobIntentionView.setExpectIndustryStr(sb.toString());
            }
        }
        // 处理期望城市
        Map<Integer, Location> locationMap = basedataRemoteService.getLocationMap();
        String[] expectCityArr = downJobIntentionView.getExpectCity();
        if (ArrayUtils.isNotEmpty(expectCityArr)) {
            StringBuffer sb = new StringBuffer();
            for (String expectCity : expectCityArr) {
                try {
                    if (StringUtils.isBlank(expectCity)) {
                        continue;
                    }
                    Location location = locationMap.get(Integer.valueOf(expectCity));
                    if (null == location) {
                        continue;
                    }
                    sb.append(location.getName() + " ");
                } catch (Exception e) {
                    logger.error("deal expectCity error" + e.getMessage(), e);
                }
            }
            downJobIntentionView.setExpectCityStr(sb.toString());
        }

        return downJobIntentionView;
    }

    private List<ResumeEducationBackgroundView> dealEducationBackground(
            List<ResumeEducationBackgroundView> resumeEducationBackgroundListViews) {
        if (CollectionUtils.isEmpty(resumeEducationBackgroundListViews)) {
            return Collections.emptyList();
        }
        for (ResumeEducationBackgroundView resumeEducationBackgroundView : resumeEducationBackgroundListViews) {
            if (null == resumeEducationBackgroundView) {
                continue;
            }
            String degreeIcon = resumeEducationBackgroundView.getDegreeIcon();
            if (StringUtils.isNoneBlank(degreeIcon)) {
                String body_userPicStr = null;
                byte[] data = degreeFileRemoteService.download(degreeIcon);
                long length = data.length;
                if (length >= 1024 * 500) {
                    data = decompressPicByte(data);
                }
                Base64 encoder = new Base64();
                // 图片
                body_userPicStr = encoder.encodeAsString(data);
                resumeEducationBackgroundView.setDegreeIcon(body_userPicStr);

            }

        }
        return resumeEducationBackgroundListViews;
    }

    private List<ResumeWorkBackgroundView> dealWorkBackground(List<ResumeWorkBackgroundView> workBackgrounds) {
        if (CollectionUtils.isEmpty(workBackgrounds)) {
            return Collections.emptyList();
        }
        // List<DownResumeWorkBgRespondentView> result = new ArrayList<>();
        for (ResumeWorkBackgroundView resumeWorkBackgroundView : workBackgrounds) {
            if (null == resumeWorkBackgroundView) {
                continue;
            }
            // 处理花费时间
            this.dealWorkBackSpendTime(resumeWorkBackgroundView.getStartYear(),
                    resumeWorkBackgroundView.getStartMonth(), resumeWorkBackgroundView.getEndYear(),
                    resumeWorkBackgroundView.getEndMonth(), resumeWorkBackgroundView);
            //
            // List<ResumeWorkBgRespondentView> bgRespondents = resumeWorkBackgroundView.getBgRespondents();
            // if (CollectionUtils.isEmpty(bgRespondents)) {
            // continue;
            // }
            // for (ResumeWorkBgRespondentView resumeWorkBgRespondentView : bgRespondents) {
            // DownResumeWorkBgRespondentView downResumeWorkBgRespondentView = new DownResumeWorkBgRespondentView();
            // downResumeWorkBgRespondentView.setCompanyName(resumeWorkBackgroundView.getCompany());
            // downResumeWorkBgRespondentView.setStartYear(resumeWorkBackgroundView.getStartYear());
            // downResumeWorkBgRespondentView.setStartMonth(resumeWorkBackgroundView.getStartMonth());
            // downResumeWorkBgRespondentView.setEndYear(resumeWorkBackgroundView.getEndYear());
            // downResumeWorkBgRespondentView.setEndMonth(resumeWorkBackgroundView.getEndMonth());
            // downResumeWorkBgRespondentView.setRespondentName(resumeWorkBgRespondentView.getRespondentName());
            // downResumeWorkBgRespondentView.setRespondentJob(resumeWorkBgRespondentView.getRespondentJob());
            // downResumeWorkBgRespondentView.setRelation(resumeWorkBgRespondentView.getRelation());
            // downResumeWorkBgRespondentView.setFeedbackDesc(resumeWorkBgRespondentView.getFeedbackDesc());
            // // // 处理花费时间
            // this.dealWorkBackSpendTime(downResumeWorkBgRespondentView.getStartYear(),
            // downResumeWorkBgRespondentView.getStartMonth(), downResumeWorkBgRespondentView.getEndYear(),
            // downResumeWorkBgRespondentView.getEndMonth(), downResumeWorkBgRespondentView);
            // result.add(downResumeWorkBgRespondentView);
            // }
        }
        return workBackgrounds;

    }

    private void dealWorkBackSpendTime(Integer startYear, Integer startMonth, Integer endYear, Integer endMonth,
            ResumeWorkBackgroundView resumeWorkBackgroundView) {
        resumeWorkBackgroundView.setStartTime(startYear + com.lieni.core.util.StringUtils.HYPHEN + startMonth);
        if (null == endYear || endYear == 9999 || 0 == endYear) {
            resumeWorkBackgroundView.setEndTime(currentNow);
            Date now = new Date();
            Calendar cal1 = new GregorianCalendar();
            int date = DateTimeUtil.getDate(new Date());
            cal1.set(startYear, startMonth - 1, date);
            int monthsBetween = DateTimeUtil.monthsBetween(now, cal1.getTime());
            int spendYear = monthsBetween / 12;
            int spendmonth = monthsBetween % 12;
            StringBuffer spendTimeSb = new StringBuffer();
            if (spendYear > 0) {
                spendTimeSb.append(spendYear + yearName);
            }
            if (spendmonth > 0) {
                spendTimeSb.append(spendmonth + monthName);
            }
            resumeWorkBackgroundView.setSpendTime(spendTimeSb.toString());
        } else {
            resumeWorkBackgroundView.setEndTime(endYear + com.lieni.core.util.StringUtils.HYPHEN + endMonth);
            Calendar cal1 = new GregorianCalendar();
            int date = DateTimeUtil.getDate(new Date());
            cal1.set(startYear, startMonth - 1, date);
            Calendar cal2 = new GregorianCalendar();
            cal2.set(endYear, endMonth - 1, date);
            int monthsBetween = DateTimeUtil.monthsBetween(cal2.getTime(), cal1.getTime());
            int spendYear = monthsBetween / 12;
            int spendmonth = monthsBetween % 12;
            StringBuffer spendTimeSb = new StringBuffer();
            if (spendYear > 0) {
                spendTimeSb.append(spendYear + yearName);
            }
            if (spendmonth > 0) {
                spendTimeSb.append(spendmonth + monthName);
            }
            resumeWorkBackgroundView.setSpendTime(spendTimeSb.toString());
        }

    }

    private List<TrainingExperienceView> dealTrainingExperience(String userId, String resumeId) {
        List<TrainingExperienceView> listTrainingExperience = resumeContentService.listTrainingExperience(userId,
                resumeId);
        if (CollectionUtils.isEmpty(listTrainingExperience)) {
            return Collections.emptyList();
        }
        for (TrainingExperienceView trainingExperienceView : listTrainingExperience) {
            if (null == trainingExperienceView) {
                continue;
            }
            Integer startYear = trainingExperienceView.getStartYear();
            Integer startMonth = trainingExperienceView.getStartMonth();
            trainingExperienceView.setStartTime(startYear + com.lieni.core.util.StringUtils.HYPHEN + startMonth);
            this.dealTrainingExperienceSpendTime(startYear, startMonth, trainingExperienceView.getEndYear(),
                    trainingExperienceView.getEndMonth(), trainingExperienceView);

        }

        return listTrainingExperience;
    }

    private void dealTrainingExperienceSpendTime(Integer startYear, Integer startMonth, Integer endYear,
            Integer endMonth, TrainingExperienceView trainingExperienceView) {

        if (null == endYear || endYear == 9999) {
            trainingExperienceView.setEndTime(currentNow);
            Date now = new Date();
            Calendar cal1 = new GregorianCalendar();
            int date = DateTimeUtil.getDate(new Date());
            cal1.set(startYear, startMonth - 1, date);
            int monthsBetween = DateTimeUtil.monthsBetween(now, cal1.getTime());
            int spendYear = monthsBetween / 12;
            int spendmonth = monthsBetween % 12;
            StringBuffer spendTimeSb = new StringBuffer();
            if (spendYear > 0) {
                spendTimeSb.append(spendYear + yearName);
            }
            if (spendmonth > 0) {
                spendTimeSb.append(spendmonth + monthName);
            }
            trainingExperienceView.setSpendTime(spendTimeSb.toString());
        } else {
            trainingExperienceView.setEndTime(endYear + com.lieni.core.util.StringUtils.HYPHEN + endMonth);
            Calendar cal1 = new GregorianCalendar();
            int date = DateTimeUtil.getDate(new Date());
            cal1.set(startYear, startMonth - 1, date);
            Calendar cal2 = new GregorianCalendar();
            cal2.set(endYear, endMonth - 1, date);
            int monthsBetween = DateTimeUtil.monthsBetween(cal2.getTime(), cal1.getTime());
            int spendYear = monthsBetween / 12;
            int spendmonth = monthsBetween % 12;
            StringBuffer spendTimeSb = new StringBuffer();
            if (spendYear > 0) {
                spendTimeSb.append(spendYear + yearName);
            }
            if (spendmonth > 0) {
                spendTimeSb.append(spendmonth + monthName);
            }
            trainingExperienceView.setSpendTime(spendTimeSb.toString());
        }
    }

    private List<ProjectExperienceView> dealProjectExperience(String userId, String resumeId) {
        List<ProjectExperienceView> list = resumeContentService.listProjectExperience(userId, resumeId);
        if (CollectionUtils.isEmpty(list)) {
            return Collections.emptyList();
        }
        for (ProjectExperienceView projectExperienceView : list) {
            if (null == projectExperienceView) {
                continue;
            }
            Integer startYear = projectExperienceView.getStartYear();
            Integer startMonth = projectExperienceView.getStartMonth();
            projectExperienceView.setStartTime(startYear + com.lieni.core.util.StringUtils.HYPHEN + startMonth);
            this.dealProjectSpendTime(startYear, startMonth, projectExperienceView.getEndYear(),
                    projectExperienceView.getEndMonth(), projectExperienceView);

        }

        return list;
    }

    private void dealProjectSpendTime(Integer startYear, Integer startMonth, Integer endYear, Integer endMonth,
            ProjectExperienceView projectExperienceView) {
        if (null == endYear || endYear == 9999) {
            projectExperienceView.setEndTime(currentNow);
            Date now = new Date();
            Calendar cal1 = new GregorianCalendar();
            int date = DateTimeUtil.getDate(new Date());
            cal1.set(startYear, startMonth - 1, date);
            int monthsBetween = DateTimeUtil.monthsBetween(now, cal1.getTime());
            int spendYear = monthsBetween / 12;
            int spendmonth = monthsBetween % 12;
            StringBuffer spendTimeSb = new StringBuffer();
            if (spendYear > 0) {
                spendTimeSb.append(spendYear + yearName);
            }
            if (spendmonth > 0) {
                spendTimeSb.append(spendmonth + monthName);
            }
            projectExperienceView.setSpendTime(spendTimeSb.toString());
        } else {
            projectExperienceView.setEndTime(endYear + com.lieni.core.util.StringUtils.HYPHEN + endMonth);
            Calendar cal1 = new GregorianCalendar();
            int date = DateTimeUtil.getDate(new Date());
            cal1.set(startYear, startMonth - 1, date);
            Calendar cal2 = new GregorianCalendar();
            cal2.set(endYear, endMonth - 1, date);
            int monthsBetween = DateTimeUtil.monthsBetween(cal2.getTime(), cal1.getTime());
            int spendYear = monthsBetween / 12;
            int spendmonth = monthsBetween % 12;
            StringBuffer spendTimeSb = new StringBuffer();
            if (spendYear > 0) {
                spendTimeSb.append(spendYear + yearName);
            }
            if (spendmonth > 0) {
                spendTimeSb.append(spendmonth + monthName);
            }
            projectExperienceView.setSpendTime(spendTimeSb.toString());
        }

    }

    private List<WorkExperienceView> dealWorkExperience(String userId, String resumeId) {

        List<WorkExperienceView> workExperienceListViews = resumeContentService.listWorkExperience(userId, resumeId);
        if (CollectionUtils.isEmpty(workExperienceListViews)) {
            return Collections.emptyList();
        }
        for (WorkExperienceView workExperienceView : workExperienceListViews) {
            if (null == workExperienceView) {
                continue;
            }
            Integer startYear = workExperienceView.getStartYear();
            Integer startMonth = workExperienceView.getStartMonth();
            workExperienceView.setStartTime(startYear + com.lieni.core.util.StringUtils.HYPHEN + startMonth);
            this.dealWorkSpendTime(workExperienceView.getStartYear(), workExperienceView.getStartMonth(),
                    workExperienceView.getEndYear(), workExperienceView.getEndMonth(), workExperienceView);
            // 处理公司行业
            String companyIndustry = workExperienceView.getCompanyIndustry();
            if (StringUtils.isNoneBlank(companyIndustry)) {
                String[] split = companyIndustry.split(com.lieni.core.util.StringUtils.ENGLISH_COMMA);
                if (ArrayUtils.isEmpty(split)) {
                    continue;
                }
                Map<Integer, IndustryBean> industryMap = basedataRemoteService.getIndustryMap();
                if (MapUtils.isNotEmpty(industryMap)) {
                    StringBuffer sb = new StringBuffer();
                    for (String companyIndustryId : split) {
                        if (StringUtils.isBlank(companyIndustryId)) {
                            continue;
                        }
                        IndustryBean industryBean = industryMap.get(Integer.valueOf(companyIndustryId));
                        if (null == industryBean) {
                            continue;
                        }
                        sb.append(industryBean.getName() + " ");
                    }
                    workExperienceView.setCompanyIndustry(sb.toString());
                }

            }

        }
        return workExperienceListViews;
    }

    private void dealWorkSpendTime(Integer startYear, Integer startMonth, Integer endYear, Integer endMonth,
            WorkExperienceView workExperienceView) {

        if (null == endYear || endYear == 9999) {
            workExperienceView.setEndTime(currentNow);
            Date now = new Date();
            Calendar cal1 = new GregorianCalendar();
            int date = DateTimeUtil.getDate(new Date());
            cal1.set(startYear, startMonth - 1, date);
            int monthsBetween = DateTimeUtil.monthsBetween(now, cal1.getTime());
            int spendYear = monthsBetween / 12;
            int spendmonth = monthsBetween % 12;
            StringBuffer spendTimeSb = new StringBuffer();
            if (spendYear > 0) {
                spendTimeSb.append(spendYear + yearName);
            }
            if (spendmonth > 0) {
                spendTimeSb.append(spendmonth + monthName);
            }
            workExperienceView.setSpendTime(spendTimeSb.toString());
        } else {
            workExperienceView.setEndTime(endYear + com.lieni.core.util.StringUtils.HYPHEN + endMonth);
            Calendar cal1 = new GregorianCalendar();
            int date = DateTimeUtil.getDate(new Date());
            cal1.set(startYear, startMonth - 1, date);
            Calendar cal2 = new GregorianCalendar();
            cal2.set(endYear, endMonth - 1, date);
            int monthsBetween = DateTimeUtil.monthsBetween(cal2.getTime(), cal1.getTime());
            int spendYear = monthsBetween / 12;
            int spendmonth = monthsBetween % 12;
            StringBuffer spendTimeSb = new StringBuffer();
            if (spendYear > 0) {
                spendTimeSb.append(spendYear + yearName);
            }
            if (spendmonth > 0) {
                spendTimeSb.append(spendmonth + monthName);
            }
            workExperienceView.setSpendTime(spendTimeSb.toString());
        }

    }

}
