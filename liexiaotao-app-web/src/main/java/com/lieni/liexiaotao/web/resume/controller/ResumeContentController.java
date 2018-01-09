package com.lieni.liexiaotao.web.resume.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections4.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lieni.core.exception.NeedLoginException;
import com.lieni.core.web.response.JsonResult;
import com.lieni.file.remote.IFileRemoteService;
import com.lieni.file.remote.IScaleImageRemoteService;
import com.lieni.liexiaotao.api.resume.bean.AvatarSizeRation;
import com.lieni.liexiaotao.api.resume.exception.ResumeException;
import com.lieni.liexiaotao.api.resume.remote.IResumePurchaseRemoteService;
import com.lieni.liexiaotao.web.base.controller.BaseController;
import com.lieni.liexiaotao.web.resume.service.IResumeContentService;
import com.lieni.liexiaotao.web.resume.service.IResumeForwardService;
import com.lieni.liexiaotao.web.resume.view.ResumeEducationBackgroundView;
import com.lieni.liexiaotao.web.resume.view.ResumeWorkBackgroundView;
import com.lieni.resume.model.ResumeBackgroundSurvey;
import com.lieni.resume.remote.IResumeBackgroundRemoteService;

@RestController
@RequestMapping("resume")
public class ResumeContentController extends BaseController {

    @Autowired
    private IResumeContentService resumeContentService;
    @Autowired
    private IFileRemoteService degreeFileRemoteService;
    @Autowired
    private IFileRemoteService resumeFileRemoteService;
    @Autowired
    private IResumePurchaseRemoteService resumePurchaseRemoteService;
    @Autowired
    private IScaleImageRemoteService avatarImageRemoteService;
    @Autowired
    private IResumeForwardService resumeForwardService;
    @Autowired
    private IResumeBackgroundRemoteService resumeBackgroundRemoteService;

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉 查询简历的基本信息
     *
     * @param request
     * @param resumeId
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/info", method = RequestMethod.GET)
    public JsonResult getResumeInfo(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String userId = checkLogin(request);
        return JsonResult.success(resumeContentService.getResumeInfoViewByUserIdAndResumeId(userId, resumeId));
    }

    /**
     * 是否有推荐报告
     * 
     * @param request
     * @param resumeId
     * @param recommendedType
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/report/exist", method = RequestMethod.GET)
    public JsonResult isExistReport(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = false) String resumeId,
            @RequestParam(value = "voucherCode", required = false) String voucherCode) throws NeedLoginException {
        if (StringUtils.isBlank(resumeId) && StringUtils.isBlank(voucherCode)) {
            return JsonResult.success(false);
        }
        if (StringUtils.isBlank(resumeId)) {
            Map<String, String> map = resumeForwardService.getUserIdAndResumeIdByCode(voucherCode);
            if (MapUtils.isEmpty(map)) {
                return JsonResult.success(false);
            }
            resumeId = map.get(IResumeForwardService.RESUME_ID);
        }
        return JsonResult.success(resumeContentService.isExistReport(resumeId));
    }

    /**
     * 根据类型查询推荐报告信息
     * 
     * @param request
     * @param resumeId
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/report", method = RequestMethod.GET)
    public JsonResult getReport(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String userId = checkLogin(request);
        return JsonResult.success(resumeContentService.getResumeReportViewByUserIdAndResumeId(userId, resumeId));
    }

    /**
     * 购买前背调报告
     * 
     * @param request
     * @param resumeId 简历id
     * @param voucherCode code
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/background/survey/simple", method = RequestMethod.GET)
    public JsonResult isExistBackgroundSurvey(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = false) String resumeId,
            @RequestParam(value = "voucherCode", required = false) String voucherCode) throws NeedLoginException {
        if (StringUtils.isBlank(resumeId) && StringUtils.isBlank(voucherCode)) {
            return JsonResult.success(false);
        }
        if (StringUtils.isBlank(resumeId)) {
            Map<String, String> map = resumeForwardService.getUserIdAndResumeIdByCode(voucherCode);
            if (MapUtils.isEmpty(map)) {
                return JsonResult.success(false);
            }
            resumeId = map.get(IResumeForwardService.RESUME_ID);
        }
        // 判断最新一份背调报告的工作经历、教育经历是否有
        Map<String, Object> map = new HashMap<String, Object>();
        ResumeBackgroundSurvey resumeBackgroundSurvey = resumeBackgroundRemoteService.getNewestByResumeId(resumeId);
        List<ResumeWorkBackgroundView> workBackgroundSurveys = new ArrayList<ResumeWorkBackgroundView>();
        List<ResumeEducationBackgroundView> educationBackgroundSurveys = new ArrayList<ResumeEducationBackgroundView>();
        // 没有背调直接返回空集合
        if (resumeBackgroundSurvey != null) {
            workBackgroundSurveys = resumeContentService.listResumeWorkBackgroundSimple(resumeBackgroundSurvey.getId(),
                    resumeId);
            educationBackgroundSurveys = resumeContentService
                    .listResumeEducationBackgroundSimple(resumeBackgroundSurvey.getId(), resumeId);
        }
        map.put("workBackgrounds", workBackgroundSurveys);
        map.put("educationBackgrounds", educationBackgroundSurveys);
        return JsonResult.success(map);
    }

    /**
     * 查询背调
     * 
     * @param request
     * @param resumeId 简历id
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/background/survey", method = RequestMethod.GET)
    public JsonResult listWorkBackgrounds(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String userId = checkLogin(request);
        return JsonResult.success(resumeContentService.getBackgroungSurveysByUserIdAndResumeId(userId, resumeId));
    }

    /**
     * 查询求职意向
     * 
     * @param request
     * @param resumeId
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/job/intention", method = RequestMethod.GET)
    public JsonResult getJobIntention(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String userId = checkLogin(request);
        return JsonResult.success(resumeContentService.getJobIntentionViewByUserIdAndResumeId(userId, resumeId));
    }

    /**
     * 查询工作经历
     * 
     * @param request
     * @param resumeId
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/work/list", method = RequestMethod.GET)
    public JsonResult listWorkExpervices(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String userId = checkLogin(request);
        return JsonResult.success(resumeContentService.listWorkExperience(userId, resumeId));
    }

    /**
     * 查询教育经历
     * 
     * @param request
     * @param resumeId
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/education/list", method = RequestMethod.GET)
    public JsonResult getEducationExpervices(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String userId = checkLogin(request);
        return JsonResult.success(resumeContentService.listEducationExperience(userId, resumeId));
    }

    /**
     * 查询项目经验
     * 
     * @param request
     * @param resumeId
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/project/list", method = RequestMethod.GET)
    public JsonResult getProjectExpervices(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String userId = checkLogin(request);
        return JsonResult.success(resumeContentService.listProjectExperience(userId, resumeId));
    }

    /**
     * 查询语言能力
     * 
     * @param request
     * @param resumeId
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/language", method = RequestMethod.GET)
    public JsonResult getLanguage(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String userId = checkLogin(request);
        return JsonResult.success(resumeContentService.listLanguageAbility(userId, resumeId));
    }

    /**
     * 查询人才培训经历
     * 
     * @param request
     * @param resumeId
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/trainings/list", method = RequestMethod.GET)
    public JsonResult listTrainings(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String userId = checkLogin(request);
        return JsonResult.success(resumeContentService.listTrainingExperience(userId, resumeId));
    }

    /**
     * 查询附件作品
     * 
     * @param request
     * @param resumeId
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/product/list", method = RequestMethod.GET)
    public JsonResult getProducts(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String userId = checkLogin(request);
        return JsonResult.success(resumeContentService.listProduct(userId, resumeId));
    }

    /**
     * 
     * 功能描述: <br>
     * 附件
     *
     * @param key 文件key
     */
    @RequestMapping(value = "v1/product/download", method = RequestMethod.GET)
    public void downloadDegreeFile(HttpServletResponse response,
            @RequestParam(value = "key", required = true) String key) {
        if (StringUtils.isEmpty(key)) {
            return;
        }
        // 获取文件
        byte[] file = resumeFileRemoteService.download(key);
        // 输出文件
        String fileName = key.substring(key.lastIndexOf(com.lieni.core.util.StringUtils.SLASH) + 1);
        try {
            outputFile(response, key, fileName, file);
        } catch (UnsupportedEncodingException e) {
            logger.error("degree upload failed. errorMessage[{}]", e.getMessage(), e);
        }
    }

    /**
     * 
     * 功能描述: <br>
     * 获取学历证明截图
     *
     * @param request
     * @param resumeEducationBackgroundId 教育经历背调id
     * @return
     */
    @RequestMapping(value = "v1/background/degree/picture", method = RequestMethod.GET)
    public JsonResult getPictureById(HttpServletRequest request,
            @RequestParam(name = "key", required = true) String key) {
        if (StringUtils.isBlank(key)) {
            return JsonResult.success();
        }
        return JsonResult.success(degreeFileRemoteService.getUrl(key));
    }

    /**
     * 
     * 功能描述: <br>
     * 获取头像
     *
     * @param request
     * @param key
     * @param type
     * @return
     */
    @RequestMapping(value = "v1/avatar/show", method = RequestMethod.GET)
    public JsonResult queryPicUrl(HttpServletRequest request, @RequestParam(name = "key", required = true) String key) {
        String picUrl = avatarImageRemoteService.getUrl(key, AvatarSizeRation.NORMAL.getRation());
        Map<String, String> data = new HashMap<String, String>();
        data.put("picUrl", picUrl);
        return JsonResult.success(data);

    }

    /**
     * 
     * 功能描述: <br>
     * 检查更新
     *
     * @param request
     * @param resumeId 简历id
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/update/check", method = RequestMethod.GET)
    public JsonResult checkUpdate(HttpServletRequest request,
            @RequestParam(name = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String userId = checkLogin(request);
        if (StringUtils.isBlank(resumeId)) {
            return JsonResult.success(false);
        }
        return JsonResult.success(resumeContentService.checkUpdate(userId, resumeId));
    }

    /**
     * 
     * 功能描述: <br>
     * 更新简历版本
     *
     * @param request
     * @param resumeId 简历id
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/version/update", method = RequestMethod.POST)
    public JsonResult updateVersion(HttpServletRequest request,
            @RequestParam(name = "purchaseId", required = true) long purchaseId) throws NeedLoginException {
        String userId = checkLogin(request);
        try {
            resumePurchaseRemoteService.updateVersion(userId, purchaseId);
        } catch (ResumeException e) {
            logger.error("resume version update failed. errorMessage=[{}]" + e.getMessage(), e);
            return JsonResult.error(e.getErrorCode(), messageSource);
        }
        return JsonResult.success();
    }

}
