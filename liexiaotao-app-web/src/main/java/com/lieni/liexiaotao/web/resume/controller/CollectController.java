package com.lieni.liexiaotao.web.resume.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lieni.core.exception.NeedLoginException;
import com.lieni.core.web.response.JsonResult;
import com.lieni.liexiaotao.api.resume.exception.ResumeCollectException;
import com.lieni.liexiaotao.api.resume.exception.ResumeException;
import com.lieni.liexiaotao.api.resume.exception.ResumePurchaseException;
import com.lieni.liexiaotao.api.resume.remote.IResumeCollectRemoteService;
import com.lieni.liexiaotao.web.base.controller.BaseController;

@RestController
@RequestMapping("collect")
public class CollectController extends BaseController {

    @Autowired
    private IResumeCollectRemoteService resumeCollectRemoteService;

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉收藏简历
     *
     * @param request
     * @param resumeId 简历id
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/resume", method = RequestMethod.POST)
    public JsonResult collecte(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String loginUserId = checkLogin(request);
        try {
            resumeCollectRemoteService.collect(loginUserId, loginUserId, resumeId);
        } catch (ResumeException | ResumeCollectException | ResumePurchaseException e) {
            logger.error(" collect resume error" + e.getMessage(), e);
            return JsonResult.error(e.getErrorCode(), messageSource);
        }
        return JsonResult.success();
    }

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉取消收藏
     *
     * @param request
     * @param resumeId 简历id
     * @return
     * @throws NeedLoginException
     */

    @RequestMapping(value = "v1/resume/cancel", method = RequestMethod.POST)
    public JsonResult cancel(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String loginUserId = checkLogin(request);
        try {
            resumeCollectRemoteService.cancel(loginUserId, loginUserId, resumeId);
        } catch (ResumeException e) {
            logger.error("cancle collect resume error" + e.getMessage(), e);
            return JsonResult.error(e.getErrorCode(), messageSource);
        }
        return JsonResult.success();
    }

}
