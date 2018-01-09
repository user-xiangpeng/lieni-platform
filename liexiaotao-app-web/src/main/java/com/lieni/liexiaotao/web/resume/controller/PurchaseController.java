package com.lieni.liexiaotao.web.resume.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lieni.core.exception.NeedLoginException;
import com.lieni.core.web.response.JsonResult;
import com.lieni.liexiaotao.api.resume.exception.ResumeException;
import com.lieni.liexiaotao.api.resume.exception.ResumePurchaseException;
import com.lieni.liexiaotao.web.base.controller.BaseController;
import com.lieni.liexiaotao.web.resume.service.IResumeService;

@RestController
@RequestMapping("purchase")
public class PurchaseController extends BaseController {

    public static final Logger logger = LoggerFactory.getLogger(PurchaseController.class);
    @Autowired
    private IResumeService resumeService;

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉购买简历
     *
     * @param request
     * @param resumeId 简历id
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/resume", method = RequestMethod.POST)
    public JsonResult purchaseResume(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String loginUserId = checkLogin(request);
        try {
            return JsonResult.success(resumeService.create(loginUserId, loginUserId, resumeId));
        } catch (ResumeException | ResumePurchaseException e) {
            logger.error(" purchase resume error" + e.getMessage(), e);
            return JsonResult.error(e.getErrorCode(), messageSource);
        }

    }

}
