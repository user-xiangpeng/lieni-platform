package com.lieni.liexiaotao.web.auth.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lieni.auth.bean.AuthSession;
import com.lieni.auth.bean.UserType;
import com.lieni.auth.bean.VoucherObjType;
import com.lieni.auth.bean.VoucherType;
import com.lieni.auth.exception.AuthorizeException;
import com.lieni.auth.remote.IAuthorizeSessionRemoteService;
import com.lieni.auth.remote.IPassportRemoteService;
import com.lieni.auth.remote.IPasswordRemoteService;
import com.lieni.auth.remote.IUniqueVoucherCodeRemoteService;
import com.lieni.core.exception.BaseException;
import com.lieni.core.exception.NeedLoginException;
import com.lieni.core.web.response.JsonResult;
import com.lieni.liexiaotao.web.base.controller.BaseController;

@RestController
@RequestMapping("account")
public class AccountController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(AccountController.class);

    @Autowired
    private IPasswordRemoteService passwordRemoteService;
    @Autowired
    private IPassportRemoteService passportRemoteService;
    @Autowired
    private IUniqueVoucherCodeRemoteService uniqueVoucherCodeRemoteService;
    @Autowired
    protected IAuthorizeSessionRemoteService authorizeSessionRemoteService;

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉手机号是否存在
     *
     * @param request
     * @param response
     * @param mobile
     * @return
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */

    @RequestMapping(value = "v1/mobile/exist", method = RequestMethod.GET)
    public JsonResult mobileExist(HttpServletRequest request, HttpServletResponse response,
            @RequestParam(required = true) String mobile) {
        JsonResult result = new JsonResult();
        boolean exist = passportRemoteService.mobileExist(mobile, UserType.TUIMUAM);
        Map<String, Object> data = new HashMap<>();
        data.put("exist", exist);
        result.setData(data);
        return result;
    }

    /**
     * 
     * 功能描述: <br>
     * 找回密码（验证完手机号重置密码）
     *
     * @param request
     * @param response
     * @param voucherCode 身份码
     * @param password 密码
     * @param confirmPassword 确认密码
     * @return 操作是否成功
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @RequestMapping(value = "v1/password/reset", method = RequestMethod.POST)
    public JsonResult resetPassword(HttpServletRequest request, HttpServletResponse response,
            @RequestParam(required = true) String voucherCode, @RequestParam(required = true) String password,
            @RequestParam(required = true) String confirmPassword) {
        AuthSession authSession = getSession(request);
        if (authSession == null) {
            logger.error("register error. Session is null.");
            return JsonResult.error(BaseException.PAGE_INVALID, messageSource);
        }
        // 修改用户登录密码
        JsonResult result = new JsonResult();
        try {
            String userIdStr = uniqueVoucherCodeRemoteService.useAndRemove(VoucherType.FORGET_PASSWORD,
                    VoucherObjType.PASSPORT, voucherCode);

            if (StringUtils.isEmpty(userIdStr) || !StringUtils.isNumeric(userIdStr)) {
                return JsonResult.error(BaseException.ILLEGAL_OPERATION, messageSource);
            }
            long userId = Long.parseLong(userIdStr);
            passwordRemoteService.resetPassword(userId, userId, password, confirmPassword);
            authorizeSessionRemoteService.logoutUser(userIdStr, authSession.getSessionId());
        } catch (AuthorizeException e) {
            result.setError(e.getErrorCode(), messageSource);
        }
        return result;
    }

    /**
     * 
     * 功能描述: <br>
     * 获取登录用户信息
     *
     * @param request
     * @return 登录用户信息
     * @throws NeedLoginException
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     *//*
       * @RequestMapping(value = "v1/userInfo", method = RequestMethod.GET) public JsonResult
       * getUserInfo(HttpServletRequest request) throws NeedLoginException { long userId = checkLogin(request); //
       * 获取用户相关信息 JsonResult result = new JsonResult(); Admin admin = adminRemoteService.getById(userId); if (null !=
       * admin) { Map<String, Object> data = new HashMap<String, Object>(); data.put("name", admin.getName());
       * data.put("mobile", admin.getPhone()); data.put("email", admin.getEmail()); data.put("id", admin.getId());
       * data.put("roleId", admin.getRoleId()); data.put("golds", admin.getGolds()); String duties = admin.getDuties();
       * List<String> dutyList = stringToStringList(duties, com.lieni.core.util.StringUtils.ENGLISH_COMMA);
       * data.put("duties", dutyList); result.setData(data); } return result; }
       */

    public List<String> stringToStringList(String str, String format) {
        if (StringUtils.isBlank(str) || StringUtils.isBlank(format)) {
            return Collections.emptyList();
        }
        String[] split = str.split(format);
        List<String> list = new ArrayList<>();
        if (ArrayUtils.isNotEmpty(split)) {
            for (String string : split) {
                if (StringUtils.isNoneBlank(string)) {
                    list.add(string);
                }
            }
        }
        return list;
    }

    /**
     * 
     * 功能描述: <br>
     * 修改密码
     *
     * @param request
     * @param oldPassword 旧密码
     * @param password 密码
     * @param confirmPassword 确认密码
     * @return
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @RequestMapping(value = "v1/password/modify", method = RequestMethod.POST)
    public JsonResult modifyPassword(HttpServletRequest request, @RequestParam(required = true) String oldPassword,
            @RequestParam(required = true) String password, @RequestParam(required = true) String confirmPassword) {
        AuthSession authSession = getSession(request);
        if (authSession == null) {
            logger.error("register error. Session is null.");
            return JsonResult.error(BaseException.ILLEGAL_OPERATION, messageSource);
        }
        // 已登录用户session中应该有用户id
        long userId = authSession.getNumberUserId();
        if (userId <= 0) {
            return JsonResult.error(BaseException.ILLEGAL_OPERATION, messageSource);
        }
        // 获取用户相关信息
        JsonResult result = new JsonResult();
        try {
            boolean modifyBool = passwordRemoteService.modifyPassword(userId, userId, oldPassword, password,
                    confirmPassword);
            // 踢除其他端登录session
            if (modifyBool) {
                authorizeSessionRemoteService.logoutUser(String.valueOf(userId), authSession.getSessionId());
            }
            result.setSuccess(modifyBool);
        } catch (AuthorizeException e) {
            result.setError(e.getErrorCode(), messageSource);
        }
        return result;
    }

    /* *//**
          * 
          * 功能描述: <br>
          * 修改手机
          *
          * @param request
          * @param mobile 新手机号
          * @param mobileCaptcha 手机验证码
          * @return
          * @see [相关类/方法](可选)
          * @since [产品/模块版本](可选)
          *//*
            * @RequestMapping(value = "v1/mobile/modify", method = RequestMethod.POST) public JsonResult
            * modifyMobile(HttpServletRequest request, @RequestParam(required = true) String mobile,
            * @RequestParam(required = true) String mobileCaptcha) { AuthSession authSession = getSession(request); if
            * (authSession == null) { logger.error("register error. Session is null."); return
            * JsonResult.error(BaseException.ILLEGAL_OPERATION, messageSource); } // 已登录用户session中应该有用户id long userId =
            * authSession.getNumberUserId(); if (userId <= 0) { return JsonResult.error(BaseException.ILLEGAL_OPERATION,
            * messageSource); } // 校验手机验证码 boolean checkBool = checkMobileCaptcha(authSession, mobile, mobileCaptcha,
            * true); if (!checkBool) { return JsonResult.error(BaseException.MOBILE_CAPTCHA_ERROR, messageSource); } //
            * 修改用户手机号 JsonResult result = new JsonResult();
            * result.setSuccess(adminRemoteService.modifyMobilePhone(userId, userId, mobile)); return result; }
            */

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉个人中心修改个人基本信息
     *
     * @param request
     * @param response
     * @param reqAdminDto
     * @return
     * @throws NeedLoginException
     *//*
       * @RequestMapping(value = "v1/modify", method = RequestMethod.POST) public JsonResult method(HttpServletRequest
       * request, HttpServletResponse response, ReqAdminDto reqAdminDto) throws NeedLoginException { long userId =
       * checkLogin(request); try { if (reqAdminDto.checkUserInfoRequired()) { throw new
       * UserException(UserException.ILLEGAL_OPERATION); } adminRemoteService.modify(userId, userId, reqAdminDto); }
       * catch (UserException e) { logger.error("modify userinfo error ==>" + e.getMessage(), e); return
       * JsonResult.error(e.getErrorCode(), messageSource); } return JsonResult.success(); }
       */
}