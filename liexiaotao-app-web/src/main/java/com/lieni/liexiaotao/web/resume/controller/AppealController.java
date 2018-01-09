
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
import com.lieni.liexiaotao.api.resume.bean.AppealTypeEnum;
import com.lieni.liexiaotao.api.resume.exception.ResumeAppealException;
import com.lieni.liexiaotao.api.resume.remote.IResumeAppealRemoteService;
import com.lieni.liexiaotao.web.base.controller.BaseController;

@RestController
@RequestMapping("appeal")
public class AppealController extends BaseController {

    private static Logger logger = LoggerFactory.getLogger(AppealController.class);

    @Autowired
    private IResumeAppealRemoteService resumeAppealRemoteService;

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉简历订单申诉
     *
     * @param request
     * @param purchaseId 申诉id
     * @param appealTypeValue 申诉类型
     * @param appealReason 申诉理由
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/resume", method = RequestMethod.POST)
    public JsonResult appeal(HttpServletRequest request,
            @RequestParam(value = "purchaseId", required = true) long purchaseId,
            @RequestParam(value = "appealTypeValue", required = true) int appealTypeValue,
            @RequestParam(value = "appealReason", required = true) String appealReason) throws NeedLoginException {
        String loginUserId = checkLogin(request);

        try {
            resumeAppealRemoteService.create(loginUserId, purchaseId, AppealTypeEnum.getByValue(appealTypeValue),
                    appealReason);
        } catch (ResumeAppealException e) {
            logger.error(" appeal resume error" + e.getMessage(), e);
            return JsonResult.error(e.getErrorCode(), messageSource);
        }
        return JsonResult.success();
    }
}
