package com.lieni.liexiaotao.web.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.lieni.api.customer.remote.ICompanyRemoteService;
import com.lieni.api.user.remote.IHrUserRemoteService;
import com.lieni.core.exception.NeedLoginException;
import com.lieni.core.web.response.JsonResult;
import com.lieni.customer.model.Company;
import com.lieni.liexiaotao.web.base.controller.BaseController;
import com.lieni.user.model.CompanyHrAccount;

@RestController
@RequestMapping("user")
public class UserController extends BaseController {

    private static Logger logger = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private ICompanyRemoteService companyRemoteService;
    @Autowired
    private IHrUserRemoteService hrUserRemoteService;

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉获取当前登录人所在公司的状态
     *
     * @param request
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/company/status", method = RequestMethod.GET)
    public JsonResult methodName(HttpServletRequest request) throws NeedLoginException {
        String loginUserId = checkLogin(request);
        CompanyHrAccount hrAccount = hrUserRemoteService.getById(loginUserId);
        if (null == hrAccount) {
            return JsonResult.success();
        }
        Company company = companyRemoteService.getById(hrAccount.getCompanyId());
        if (null == company) {
            return JsonResult.success();
        }
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("auditResult", company.getAuditResult());
        resultMap.put("contraceFlag", company.getContraceFlag());
        return JsonResult.success(resultMap);
    }

}
