
package com.lieni.liexiaotao.web.resume.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lieni.core.bean.Pager;
import com.lieni.core.exception.NeedLoginException;
import com.lieni.core.util.DateTimeUtil;
import com.lieni.core.web.response.JsonResult;
import com.lieni.core.web.response.PageJsonResult;
import com.lieni.liexiaotao.api.resume.bean.AppealResultEnum;
import com.lieni.liexiaotao.api.resume.bean.SortTypeEnum;
import com.lieni.liexiaotao.api.resume.bean.SortValueEnum;
import com.lieni.liexiaotao.api.resume.bean.TaoResumeSortTypeEnum;
import com.lieni.liexiaotao.api.resume.bean.TaoResumeSortValueEnum;
import com.lieni.liexiaotao.api.resume.exception.ResumeException;
import com.lieni.liexiaotao.api.resume.remote.IResumeCollectRemoteService;
import com.lieni.liexiaotao.api.resume.remote.IResumePurchaseRemoteService;
import com.lieni.liexiaotao.resume.model.ExtraResumeInfo;
import com.lieni.liexiaotao.web.base.controller.BaseController;
import com.lieni.liexiaotao.web.resume.service.IResumeService;
import com.lieni.liexiaotao.web.resume.view.TaoResumeListResult;
import com.lieni.resume.cv.remote.ICvResumeInfoRemoteService;
import com.lieni.search.dto.ReqTaoResumePublicDto;

@RestController
@RequestMapping("resume")
public class ResumeController extends BaseController {

    private static Logger logger = LoggerFactory.getLogger(ResumeController.class);
    @Autowired
    private IResumeService resumeService;
    @Autowired
    private ICvResumeInfoRemoteService cvResumeInfoRemoteService;
    @Autowired
    private IResumeCollectRemoteService resumeCollectRemoteService;
    @Autowired
    private IResumePurchaseRemoteService resumePurchaseRemoteService;

    /**
     * 淘人才列表
     * 
     * @param request
     * @param page 第几页
     * @param size 大小
     * @param searchWords 搜索词
     * @param latestWorkExperience 是否只搜索最近三分工作经历
     * @param reqTaoResumePublicDto 简历搜索包装类
     * @param sortValue 排序值
     * @param sortType 排序类型
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/public/list", method = RequestMethod.GET)
    public JsonResult listPublicResume(HttpServletRequest request,
            @RequestParam(value = "page", defaultValue = "1") int page,
            @RequestParam(value = "size", defaultValue = "10") int size,
            @RequestParam(value = "searchWords", required = false) String searchWords,
            @RequestParam(value = "latestWorkExperience", defaultValue = "0") boolean isRecentWorkExperience,
            ReqTaoResumePublicDto reqTaoResumePublicDto,
            @RequestParam(name = "sortValue", required = false, defaultValue = "0") Integer sortValue,
            @RequestParam(name = "sortType", required = false, defaultValue = "0") Integer sortType)
            throws NeedLoginException {
        String userId = checkLogin(request);
        PageJsonResult result = new PageJsonResult();
        page = page > 500 ? 500 : page;
        size = size > 50 ? 50 : size;

        TaoResumeListResult searchResult = resumeService.listPublicResume(userId, searchWords, isRecentWorkExperience,
                reqTaoResumePublicDto, TaoResumeSortValueEnum.getByValue(sortValue),
                TaoResumeSortTypeEnum.getByValue(sortType), (page - 1) * size, size);
        if (null == searchResult) {
            return result;
        }
        Pager pager = new Pager(page, size, searchResult.getTotal());
        result.setResult(pager, searchResult.getViews());
        return result;
    }

    /**
     * 统计简历的数量
     * 
     * @param request
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/count", method = RequestMethod.GET)
    public JsonResult count(HttpServletRequest request) throws NeedLoginException {
        checkLogin(request);
        // 简历库总数
        int countAll = cvResumeInfoRemoteService.countAll();
        // 开放简历数
        int AuthPublicCount = resumeService.countAuthPublicResume();
        // 昨日新增简历数
        Date startTime = DateTimeUtil.getYesterdayStartTime();
        Date endTime = DateTimeUtil.getYesterdayEndTime();
        int yesterdayCreateCount = resumeService.countBetweenTimeResume(startTime, endTime);
        Map<String, Integer> dataMap = new HashMap<>();
        dataMap.put("countAll", countAll);
        dataMap.put("yesterdayCreateCount", yesterdayCreateCount);
        dataMap.put("AuthPublicCount", AuthPublicCount);
        return JsonResult.success(dataMap);
    }

    /**
     * 
     * 功能描述: <br>
     * 用户各个状态简历数量统计
     *
     * @param request
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/my/count", method = RequestMethod.GET)
    public JsonResult countMyResume(HttpServletRequest request) throws NeedLoginException {
        String userId = checkLogin(request);
        Map<String, Integer> dataMap = new HashMap<>();
        dataMap.put("collectCount", resumeCollectRemoteService.countByUserId(userId));
        dataMap.put("hadCount", resumePurchaseRemoteService.countByUserIdAndSearchWords(userId, StringUtils.EMPTY,
                AppealResultEnum.DEFAULT, AppealResultEnum.REJECTAPPEAL));
        dataMap.put("invalidCount", resumePurchaseRemoteService.countByUserIdAndSearchWords(userId, StringUtils.EMPTY,
                AppealResultEnum.AGGREAPPEAL));
        return JsonResult.success(dataMap);
    }

    /**
     * 已获得简历列表
     * 
     * @param request
     * @param page 第几页
     * @param size 大小
     * @param searchWords 搜索词
     * @param sortValue 排序值
     * @param sortType 排序类型
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/had/list", method = RequestMethod.GET)
    public PageJsonResult listHadResume(HttpServletRequest request,
            @RequestParam(value = "page", defaultValue = "1") int page,
            @RequestParam(value = "size", defaultValue = "10") int size,
            @RequestParam(value = "searchWords", required = false) String searchWords,
            @RequestParam(name = "sortValue", required = false) Integer sortValue,
            @RequestParam(name = "sortType", required = false) Integer sortType) throws NeedLoginException {
        String userId = checkLogin(request);
        PageJsonResult result = new PageJsonResult();
        page = page > 500 ? 500 : page;
        size = size > 50 ? 50 : size;
        int totalResults = resumePurchaseRemoteService.countByUserIdAndSearchWords(userId, searchWords,
                AppealResultEnum.DEFAULT, AppealResultEnum.REJECTAPPEAL);
        if (totalResults <= 0) {
            return result;
        }
        Pager pager = new Pager(page, size, totalResults);
        List<ExtraResumeInfo> list = resumePurchaseRemoteService.listByUserIdAndSearchWords(userId, searchWords,
                SortValueEnum.getByValue(sortValue), SortTypeEnum.getByValue(sortType), pager.getFirstResult(),
                pager.getMaxResults(), AppealResultEnum.DEFAULT, AppealResultEnum.REJECTAPPEAL);
        result.setResult(pager, list);
        return result;
    }

    /**
     * 失效简历列表
     * 
     * @param request
     * @param page 第几页
     * @param size 大小
     * @param searchWords 搜索词
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/invalid/list", method = RequestMethod.GET)
    public PageJsonResult listHadResume(HttpServletRequest request,
            @RequestParam(value = "page", defaultValue = "1") int page,
            @RequestParam(value = "size", defaultValue = "10") int size,
            @RequestParam(value = "searchWords", required = false) String searchWords) throws NeedLoginException {
        String userId = checkLogin(request);
        PageJsonResult result = new PageJsonResult();
        page = page > 500 ? 500 : page;
        size = size > 50 ? 50 : size;
        int totalResults = resumePurchaseRemoteService.countByUserIdAndSearchWords(userId, searchWords,
                AppealResultEnum.AGGREAPPEAL);
        if (totalResults <= 0) {
            return result;
        }
        Pager pager = new Pager(page, size, totalResults);
        List<ExtraResumeInfo> list = resumePurchaseRemoteService.listByUserIdAndSearchWords(userId, searchWords,
                SortValueEnum.INVALID_OPERATOR_TIME, null, pager.getFirstResult(), pager.getMaxResults(),
                AppealResultEnum.AGGREAPPEAL);
        result.setResult(pager, list);
        return result;
    }

    /**
     * 
     * 功能描述: <br>
     * 删除无效简历
     *
     * @param request
     * @param resumeId 简历id
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/invalid/delete", method = RequestMethod.POST)
    public JsonResult deleteInvalidResume(HttpServletRequest request,
            @RequestParam(name = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String userId = checkLogin(request);
        try {
            resumePurchaseRemoteService.deleteInvalidResume(userId, userId, resumeId);
        } catch (ResumeException e) {
            logger.error(" delete invalid resume failed. errorMessage=[{}]" + e.getMessage(), e);
            return JsonResult.error(e.getErrorCode(), messageSource);
        }
        return JsonResult.success(true);
    }

    /**
     * 收藏简历列表
     * 
     * @param request
     * @param page 第几页
     * @param size 大小
     * @param searchWords 搜索词
     * @param sortValue 排序值
     * @param sortType 排序类型
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/collect/list", method = RequestMethod.GET)
    public PageJsonResult listCollectResume(HttpServletRequest request,
            @RequestParam(value = "page", defaultValue = "1") int page,
            @RequestParam(value = "size", defaultValue = "10") int size,
            @RequestParam(value = "searchWords", required = false) String searchWords,
            @RequestParam(name = "sortValue", required = false) Integer sortValue,
            @RequestParam(name = "sortType", required = false) Integer sortType) throws NeedLoginException {
        String userId = checkLogin(request);
        PageJsonResult result = new PageJsonResult();
        page = page > 500 ? 500 : page;
        size = size > 50 ? 50 : size;
        int totalResults = resumeCollectRemoteService.countByUserIdAndSearchWords(userId, searchWords);
        if (totalResults <= 0) {
            return result;
        }
        Pager pager = new Pager(page, size, totalResults);
        List<ExtraResumeInfo> list = resumeCollectRemoteService.listByUserIdAndSearchWords(userId, searchWords,
                SortValueEnum.getByValue(sortValue), SortTypeEnum.getByValue(sortType), pager.getFirstResult(),
                pager.getMaxResults());
        result.setResult(pager, list);
        return result;
    }

}
