package com.lieni.liexiaotao.web.resume.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.MapUtils;
import org.apache.commons.lang3.RandomUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.lieni.api.candidate.remote.ICddtRemoteService;
import com.lieni.api.user.remote.IHrUserRemoteService;
import com.lieni.core.util.MessageUtil;
import com.lieni.liexiaotao.api.resume.bean.AppealResultEnum;
import com.lieni.liexiaotao.api.resume.bean.TaoResumeSortTypeEnum;
import com.lieni.liexiaotao.api.resume.bean.TaoResumeSortValueEnum;
import com.lieni.liexiaotao.api.resume.exception.ResumeException;
import com.lieni.liexiaotao.api.resume.exception.ResumePurchaseException;
import com.lieni.liexiaotao.api.resume.remote.IResumeCollectRemoteService;
import com.lieni.liexiaotao.api.resume.remote.IResumePurchaseRemoteService;
import com.lieni.liexiaotao.resume.model.ResumeEnshrine;
import com.lieni.liexiaotao.resume.model.ResumePurchaseRecord;
import com.lieni.liexiaotao.web.core.redis.RedisKeyGenerator;
import com.lieni.liexiaotao.web.resume.service.IResumeService;
import com.lieni.liexiaotao.web.resume.view.TaoResumeListResult;
import com.lieni.liexiaotao.web.resume.view.TaoResumeListView;
import com.lieni.liexiaotao.web.resume.view.TaoWorkExperienceListView;
import com.lieni.resume.authorize.remote.IResumeAuthorizedRemoteService;
import com.lieni.resume.bean.DataSource;
import com.lieni.resume.cv.bean.CvDataSource;
import com.lieni.resume.cv.bean.ResumeLevel;
import com.lieni.resume.cv.remote.ICvResumeInfoRemoteService;
import com.lieni.resume.model.ResumeAuthorized;
import com.lieni.search.bean.ResumeSearchTerms;
import com.lieni.search.bean.ResumeSort;
import com.lieni.search.bean.SearchResult;
import com.lieni.search.dto.ReqTaoResumePublicDto;
import com.lieni.search.remote.IResumeSearchRemoteService;
import com.lieni.user.model.CompanyHrAccount;

@Service
public class ResumeService implements IResumeService {

    private static Logger logger = LoggerFactory.getLogger(ResumeService.class);
    @Autowired
    private IResumeSearchRemoteService resumeSearchRemoteService;
    @Autowired
    private IResumePurchaseRemoteService resumePurchaseRemoteService;
    @Autowired
    private IResumeCollectRemoteService resumeCollectRemoteService;
    @Autowired
    private IResumeAuthorizedRemoteService resumeAuthorizedRemoteService;
    @Autowired
    private ICvResumeInfoRemoteService cvResumeInfoRemoteService;
    @Autowired
    protected MessageSource messageSource;
    @Autowired
    private ICddtRemoteService cddtRemoteService;
    @Autowired
    private IHrUserRemoteService hrUserRemoteService;

    @Resource(name = "jdkRedisTemplate")
    private RedisTemplate<String, Map<String, Integer>> resumeDownloadCountRedisTemplate;

    @Override
    public TaoResumeListResult listPublicResume(String userId, String searchWords, boolean isRecentWorkExperience,
            ReqTaoResumePublicDto reqTaoResumePublicDto, TaoResumeSortValueEnum sortValue,
            TaoResumeSortTypeEnum sortType, int start, int maxRows) {
        ResumeSearchTerms terms = new ResumeSearchTerms();
        if (null != reqTaoResumePublicDto) {
            reqTaoResumePublicDto.forwardConvert(terms);
        }
        terms.setStatus(ResumeLevel.UPLOAD_SUCCESS.getValue());// 只查询正确的简历
        ResumeSort sorts = null;
        if (null == sortValue || null == sortType) {
            sorts = ResumeSort.MATCHING;
        } else if (TaoResumeSortValueEnum.DEFAULT.equals(sortValue)) {
            sorts = TaoResumeSortTypeEnum.DESC.equals(sortType) ? ResumeSort.MATCHING : ResumeSort.MATCHING;
        } else if (TaoResumeSortValueEnum.UPADTE_TIME.equals(sortValue)) {
            sorts = TaoResumeSortTypeEnum.DESC.equals(sortType) ? ResumeSort.UPDATE_TIME_DESC
                    : ResumeSort.UPDATE_TIME_ASC;
        }
        // TODO xingwendeng 获取当前登录人所在公司下被推荐过的简历id
        CompanyHrAccount hrAccount = hrUserRemoteService.getById(userId);
        if (null == hrAccount) {
            return null;
        }
        List<String> listResumeIdByCompanyIds = cddtRemoteService
                .listResumeIdByCompanyIds(Arrays.asList(hrAccount.getCompanyId()));
        if (CollectionUtils.isNotEmpty(listResumeIdByCompanyIds)) {
            terms.setNotInResumeID(listResumeIdByCompanyIds);
        }
        SearchResult searchResult = resumeSearchRemoteService.liexiaotaoSearch(searchWords, terms,
                isRecentWorkExperience, true, start, maxRows, sorts);

        if (null == searchResult) {
            return null;
        }
        // 设置搜索返回值
        return bindResult(searchResult, userId);
    }

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉绑定简历搜索结果
     *
     * @param searchResult搜索结果
     * @param userId 用户id
     * @return TaoResumeListResult
     */
    private TaoResumeListResult bindResult(SearchResult searchResult, String userId) {
        if (null == searchResult) {
            return null;
        }
        TaoResumeListResult taoResumeListResult = new TaoResumeListResult();
        taoResumeListResult.setTotal((int) searchResult.getTotalHits());
        List<Map<String, Object>> hits = searchResult.getHits();
        List<TaoResumeListView> views = new ArrayList<>();
        List<String> resultResumeIds = new ArrayList<>();
        for (Map<String, Object> map : hits) {// 获取所有简历id
            resultResumeIds.add(MapUtils.getString(map, "id"));
        }
        Map<String, Boolean> collectedMap = new HashMap<>();
        // 调用远程判断简历是否收藏
        Map<String, ResumeEnshrine> mapCollectedResume = resumeCollectRemoteService.mapCollectedResume(resultResumeIds,
                userId);
        Map<String, ResumePurchaseRecord> mapResumePurchaseRecord = resumePurchaseRemoteService.mapByResumeIdsAndUserId(
                userId, resultResumeIds, AppealResultEnum.DEFAULT, AppealResultEnum.REJECTAPPEAL);
        // 调用远程判断简历是否购买
        taoResumeListResult.setExtraObject(collectedMap);
        // 下载次数map
        Map<Object, Object> resumeDownloadCountMap = resumeDownloadCountRedisTemplate.opsForHash()
                .entries(RedisKeyGenerator.getResumeDownloadCountMapKey());
        for (Map<String, Object> map : hits) {// 拼装结果数据
            TaoResumeListView taoResumeListView = resumeSearchMapForwardView(map);
            // 获取简历下载次数
            taoResumeListView
                    .setDownloadCount(getResumeDownloadCount(resumeDownloadCountMap, taoResumeListView.getResumeId()));
            Boolean isBuy = false;
            Boolean collected = false;
            // 收藏字段
            if (MapUtils.isNotEmpty(mapCollectedResume)) {
                if (null != mapCollectedResume.get(taoResumeListView.getResumeId())) {
                    collected = true;
                }
            }
            if (MapUtils.isNotEmpty(mapResumePurchaseRecord)) {
                if (null != mapResumePurchaseRecord.get(taoResumeListView.getResumeId())) {
                    isBuy = true;
                }
            }
            taoResumeListView.setCollected(collected);
            // 是否购买
            taoResumeListView.setIsBuy(isBuy);
            views.add(taoResumeListView);
        }
        taoResumeListResult.setViews(views);
        return taoResumeListResult;
    }

    private int getResumeDownloadCount(Map<Object, Object> resumeDownloadCountMap, String resumeId) {
        // 没有简历下载数map创建
        if (MapUtils.isEmpty(resumeDownloadCountMap)) {
            Map<String, Integer> map = new HashMap<String, Integer>();
            // 默认加个0-50随机基数（产品要求）
            int randomNum = RandomUtils.nextInt(0, 50);
            map.put(resumeId, randomNum);
            resumeDownloadCountRedisTemplate.opsForHash().putAll(RedisKeyGenerator.getResumeDownloadCountMapKey(), map);
            return randomNum;
        } else if (null == resumeDownloadCountMap.get(resumeId)) {
            // 没有该简历的下载数创建
            int randomNum = RandomUtils.nextInt(0, 50);
            resumeDownloadCountRedisTemplate.opsForHash().put(RedisKeyGenerator.getResumeDownloadCountMapKey(),
                    resumeId, randomNum);
            return randomNum;
        }
        return (int) resumeDownloadCountMap.get(resumeId);
    }

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉将简历的搜索结果转换成view的形式
     *
     * @param map 搜索结果
     * @return TaoResumeListView
     */
    private TaoResumeListView resumeSearchMapForwardView(Map<String, Object> map) {

        if (MapUtils.isEmpty(map)) {
            return null;
        }
        TaoResumeListView taoResumeListView = new TaoResumeListView();
        taoResumeListView.setResumeId(MapUtils.getString(map, "id"));
        taoResumeListView.setGender(MapUtils.getInteger(map, "gender"));
        taoResumeListView.setJobName(MapUtils.getString(map, "currentPosition"));
        taoResumeListView.setBirthYear(MapUtils.getInteger(map, "birthYear"));
        taoResumeListView.setWorkYears(MapUtils.getInteger(map, "workYears"));
        taoResumeListView.setWorkCity(MapUtils.getLong(map, "workCity"));
        taoResumeListView.setCurrentSalary(MapUtils.getInteger(map, "currentSalary"));
        taoResumeListView.setHighestDegree(MapUtils.getInteger(map, "highestDegree"));
        List<String> schools = (List<String>) map.get("schools");
        if (CollectionUtils.isNotEmpty(schools)) {// 最高学历对应的学校，已经按时间倒序排序了
            taoResumeListView.setHighestUniversity(schools.get(0));
        }
        taoResumeListView.setWorkState(MapUtils.getInteger(map, "workState"));
        taoResumeListView.setUpdateTime(MapUtils.getLong(map, "updateTime"));
        // 最近三份工作经历
        List<TaoWorkExperienceListView> latestWorkExperiences = taoResumeListView.getLatestWorkExperiences();
        if (CollectionUtils.isEmpty(latestWorkExperiences)) {
            latestWorkExperiences = new ArrayList<>();
        }

        List<String> recentWorkTimes = (List<String>) map.get("recentWorkTimes");
        List<String> recentWorkJobNames = (List<String>) map.get("recentWorkJobNames");
        List<String> recentWorkCompanys = (List<String>) map.get("recentWorkCompanys");
        if (CollectionUtils.isNotEmpty(recentWorkTimes) && CollectionUtils.isNotEmpty(recentWorkJobNames)
                && CollectionUtils.isNotEmpty(recentWorkCompanys)) {
            int size = recentWorkTimes.size();
            String now = MessageUtil.message("now", messageSource);
            for (int i = 0; i < size; i++) {
                if (recentWorkJobNames.size() > i && recentWorkCompanys.size() > i) {
                    if (i == 3) {
                        break;
                    }
                    TaoWorkExperienceListView taoWorkExperienceListView = new TaoWorkExperienceListView();
                    taoWorkExperienceListView.setWorkTime(
                            recentWorkTimes.get(i).replace("9999.01", now).replace("9999.00", now).replace(",", "-"));
                    taoWorkExperienceListView.setJobName(recentWorkJobNames.get(i));
                    taoWorkExperienceListView.setCompany(recentWorkCompanys.get(i));
                    latestWorkExperiences.add(taoWorkExperienceListView);
                }

            }

        }
        taoResumeListView.setLatestWorkExperiences(latestWorkExperiences);
        taoResumeListView.setWorkProjectContent(MapUtils.getString(map, "workProjectContent"));
        return taoResumeListView;

    }

    @Override
    public int countAuthPublicResume() {

        List<DataSource> dataSources = new ArrayList<>();
        dataSources.add(DataSource.APOLLO);
        dataSources.add(DataSource.LIENI);
        dataSources.add(DataSource.LOTUS);
        dataSources.add(DataSource.VISTA);
        List<ResumeAuthorized> listAllByDatasource = resumeAuthorizedRemoteService.listAllByDatasource(dataSources);
        if (CollectionUtils.isEmpty(listAllByDatasource)) {
            return 0;
        }
        Set<String> phones = new HashSet<>();
        Set<String> emails = new HashSet<>();
        Set<String> idCards = new HashSet<>();
        for (ResumeAuthorized resumeAuthorized : listAllByDatasource) {
            String phone = resumeAuthorized.getPhone();
            if (StringUtils.isNoneBlank(phone)) {
                phones.add(phone);
            }
            String email = resumeAuthorized.getEmail();
            if (StringUtils.isNoneBlank(email)) {
                emails.add(phone);
            }
            String idCard = resumeAuthorized.getIdCard();
            if (StringUtils.isNoneBlank(idCard)) {
                idCards.add(phone);
            }
        }
        List<String> phonesResults = null;
        if (CollectionUtils.isNotEmpty(phones)) {
            phonesResults = new ArrayList<>(phones);
        }
        List<String> emailsResults = null;
        if (CollectionUtils.isNotEmpty(phones)) {
            emailsResults = new ArrayList<>(emails);
        }
        List<String> idCardsResults = null;
        if (CollectionUtils.isNotEmpty(phones)) {
            idCardsResults = new ArrayList<>(idCards);
        }
        return cvResumeInfoRemoteService.countByPhoneOrEmailOrIdCard(phonesResults, emailsResults, idCardsResults,
                Collections.<CvDataSource> emptyList(), Arrays.asList(ResumeLevel.UPLOAD_SUCCESS));
    }

    @Override
    public long create(String operatorId, String userId, String resumeId)
            throws ResumePurchaseException, ResumeException {
        if (StringUtils.isBlank(operatorId) || StringUtils.isBlank(userId) || StringUtils.isBlank(resumeId)) {
            throw new ResumePurchaseException(ResumePurchaseException.ILLEGAL_OPERATION);
        }
        long purchaseId = resumePurchaseRemoteService.create(operatorId, userId, resumeId);
        // 获取当前简历下载次数
        Object downloadCount = resumeDownloadCountRedisTemplate.opsForHash()
                .get(RedisKeyGenerator.getResumeDownloadCountMapKey(), resumeId);
        int count = downloadCount != null ? (int) downloadCount : RandomUtils.nextInt(0, 50);
        // 购买次数+1
        resumeDownloadCountRedisTemplate.opsForHash().put(RedisKeyGenerator.getResumeDownloadCountMapKey(), resumeId,
                ++count);
        return purchaseId;
    }

    @Override
    public int countBetweenTimeResume(Date startTime, Date endTime) {
        // *先查询授权手机号，邮箱，身份证
        // *通过手机号查询简历数
        // TODO 调用搜索接口进行统计
        return 0;

    }

}
