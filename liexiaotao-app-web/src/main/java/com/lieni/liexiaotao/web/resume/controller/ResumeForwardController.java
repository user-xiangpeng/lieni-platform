package com.lieni.liexiaotao.web.resume.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lieni.api.user.remote.IHrUserRemoteService;
import com.lieni.core.exception.NeedLoginException;
import com.lieni.core.util.JsonUtil;
import com.lieni.core.web.response.JsonResult;
import com.lieni.liexiaotao.api.resume.exception.ResumeException;
import com.lieni.liexiaotao.api.resume.remote.IResumeForwardRemoteService;
import com.lieni.liexiaotao.web.base.controller.BaseController;
import com.lieni.liexiaotao.web.resume.service.IResumeContentService;
import com.lieni.liexiaotao.web.resume.service.IResumeForwardService;
import com.lieni.user.model.CompanyHrAccount;

@RestController
@RequestMapping("resume")
public class ResumeForwardController extends BaseController {

    @Autowired
    private IResumeContentService resumeContentService;
    @Autowired
    private IResumeForwardService resumeForwardService;
    @Autowired
    private IResumeForwardRemoteService resumeForwardRemoteService;
    @Autowired
    private IHrUserRemoteService hrUserRemoteService;

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉 最近邮件转发邮箱
     *
     * @param request
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/forward/history", method = RequestMethod.GET)
    public JsonResult method(HttpServletRequest request, @RequestParam(name = "rows", required = true) int rows)
            throws NeedLoginException {
        String userId = checkLogin(request);
        // 默认显示当前用户的邮箱
        List<String> historys = resumeForwardRemoteService.listBySenderId(userId, 0, rows > 20 ? 20 : rows);
        if (CollectionUtils.isEmpty(historys)) {
            CompanyHrAccount user = hrUserRemoteService.getById(userId);
            historys = user != null ? Arrays.asList(user.getHrEmail()) : null;
        }
        return JsonResult.success(historys);
    }

    /**
     * 
     * 功能描述: <br>
     * 邮件转发简历
     *
     * @param request
     * @param resumeId 简历id
     * @param emails 多个邮箱，json格式字符串
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/forward", method = RequestMethod.POST)
    public JsonResult forwardResume(HttpServletRequest request,
            @RequestParam(name = "resumeId", required = true) String resumeId,
            @RequestParam(name = "emails", required = true) String emails) throws NeedLoginException {
        String userId = checkLogin(request);
        try {
            List<String> emailList = JsonUtil.toList(emails, List.class, String.class);
            resumeForwardRemoteService.forward(userId, resumeId, emailList);
        } catch (ResumeException e) {
            logger.error("send email error==>" + e.getErrorCode(), e);
            return JsonResult.error(e.getErrorCode(), messageSource);
        }
        return JsonResult.success();
    }

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
    @RequestMapping(value = "v1/forward/details", method = RequestMethod.GET)
    public JsonResult getResumeInfo(HttpServletRequest request,
            @RequestParam(value = "voucherCode", required = true) String voucherCode) {
        // 解析voucherCode获得其中的用户id和简历id
        Map<String, String> map = resumeForwardService.getUserIdAndResumeIdByCode(voucherCode);
        if (MapUtils.isEmpty(map)) {
            return JsonResult.success();
        }
        String userId = map.get(IResumeForwardService.USER_ID);
        String resumeId = map.get(IResumeForwardService.RESUME_ID);
        if (StringUtils.isBlank(userId) || StringUtils.isBlank(resumeId)) {
            return null;
        }
        Map<String, Object> resultData = new HashMap<String, Object>();
        resultData.put("resumeInfo", resumeContentService.getResumeInfoViewByUserIdAndResumeId(userId, resumeId));
        resultData.put("resumeReport", resumeContentService.getResumeReportViewByUserIdAndResumeId(userId, resumeId));
        resultData.put("backgroungSurvey",
                resumeContentService.getBackgroungSurveysByUserIdAndResumeId(userId, resumeId));
        resultData.put("jobIntentions", resumeContentService.getJobIntentionViewByUserIdAndResumeId(userId, resumeId));
        resultData.put("workExperiences", resumeContentService.listWorkExperience(userId, resumeId));
        resultData.put("educationExperiences", resumeContentService.listEducationExperience(userId, resumeId));
        resultData.put("projectExperiences", resumeContentService.listProjectExperience(userId, resumeId));
        resultData.put("languageAbilitys", resumeContentService.listLanguageAbility(userId, resumeId));
        resultData.put("trainingExperiences", resumeContentService.listTrainingExperience(userId, resumeId));
        resultData.put("products", resumeContentService.listProduct(userId, resumeId));
        return JsonResult.success(resultData);
    }

}
