package com.lieni.liexiaotao.web.auth.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lieni.auth.bean.AuthSession;
import com.lieni.auth.bean.UserType;
import com.lieni.auth.bean.VoucherObjType;
import com.lieni.auth.bean.VoucherType;
import com.lieni.auth.remote.IAuthorizeSessionRemoteService;
import com.lieni.auth.remote.IPassportRemoteService;
import com.lieni.auth.remote.IUniqueVoucherCodeRemoteService;
import com.lieni.core.exception.BaseException;
import com.lieni.core.util.ImageUtil;
import com.lieni.core.web.cookies.CookiesManager;
import com.lieni.core.web.response.JsonResult;
import com.lieni.liexiaotao.web.auth.service.IAuthService;
import com.lieni.liexiaotao.web.base.controller.BaseController;
import com.lieni.liexiaotao.web.common.web.filter.SessionFilter;
import com.lieni.message.sms.remote.ISmsRemoteService;
import com.lieni.user.model.Passport;

@RestController
@RequestMapping("auth")
public class AuthController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(AuthController.class);
    /**
     * 图片验证码个数
     */
    private static final int IMAGE_CODE_NUM = 4;

    // 非记住登录状态的session过期时间为一天
    private static final int SESSION_EXPIRED_TIME = 12 * 60 * 60;
    // 记住登录状态的session过期时间为30天*3月
    // private static final int REMEMBER_SESSION_EXPIRED_TIME = 30 * 24 * 60 * 60 * 3;
    @Value("${env}")
    private String env;
    @Autowired
    private IAuthService authService;
    @Autowired
    private ISmsRemoteService smsRemoteService;
    @Autowired
    private IAuthorizeSessionRemoteService authorizeSessionRemoteService;
    @Autowired
    private IUniqueVoucherCodeRemoteService uniqueVoucherCodeRemoteService;
    @Autowired
    private IPassportRemoteService passportRemoteService;
    // 请求头token
    public static final String ACCESS_TOKEN = "accessToken";

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉获取sessionId
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "v1/link", method = RequestMethod.GET)
    public JsonResult link(HttpServletRequest request, HttpServletResponse response) {
        JsonResult result = new JsonResult();
        Map<String, Object> returnData = new HashMap<String, Object>();
        AuthSession session = getOrCreateSession(request);
        if (session != null) {
            returnData.put("nonce", session.getNonce());
            returnData.put("realm", session.getRealm());
            returnData.put("sessionId", session.getSessionId());
            returnData.put("imageCaptcha", authService.loginNeedImageCaptcha(session));
        }
        result.setData(returnData);
        CookiesManager.setCookie(request, response, ACCESS_TOKEN, session.getSessionId(), SESSION_EXPIRED_TIME);
        logger.info("cookie save token by link: {}", CookiesManager.getCookie(request, SessionFilter.ACCESS_TOKEN));

        return result;
    }

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉获取图片验证码
     *
     * @param request
     * @param response
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @RequestMapping(value = "v1/captcha/image", method = RequestMethod.GET)
    public void captchaImage(HttpServletRequest request, HttpServletResponse response) {
        AuthSession authSession = getSession(request);
        if (authSession == null) {
            logger.error("Captcha image error. Session is null.");
            return;
        }

        // 设置响应的类型格式为图片格式
        response.setContentType("image/jpeg");
        // 禁止图像缓存。
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        // 去掉 I和1 0和O
        String code = RandomStringUtils.random(IMAGE_CODE_NUM, "ABCDEFGHJKLMNPQRSTUVWXYZ23456789");
        byte[] bytes = null;
        OutputStream out = null;
        try {
            bytes = ImageUtil.generateCaptchaImage(code);
            logger.info("tokenId={}，code={}", authSession.getSessionId(), code);
            authSession.setImageCaptcha(code);
            authorizeSessionRemoteService.updateSession(authSession);
            out = response.getOutputStream();
            out.write(bytes);
            out.flush();
        } catch (Exception e) {
            logger.error("v1/captcha/image error.{}", e);
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (IOException e) {
                    logger.error("OutputStream close is error,{}", e);
                }
            }
        }
    }

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉发送手机验证码
     *
     * @param request
     * @param response
     * @param mobile
     * @param imageCaptcha
     * @return
     */
    @RequestMapping(value = "v1/captcha/mobile", method = RequestMethod.POST)
    public JsonResult mobileCaptcha(HttpServletRequest request, HttpServletResponse response,
            @RequestParam(required = true) String mobile, @RequestParam(required = true) String imageCaptcha) {
        AuthSession authSession = getSession(request);
        if (authSession == null) {
            logger.error("Captcha mobile error. Session is null.");
            return JsonResult.error(BaseException.PAGE_INVALID, messageSource);
        }
        if (!mobileCaptchaRemoteService.canGenCaptcha(mobile)) {
            logger.error("Captcha mobile error. Generate Mobile Captcha is too often.");
            return JsonResult.error(BaseException.CAPTCHA_SENDED, messageSource);
        }
        String orginImageCaptcha = authSession.getImageCaptcha();
        if (StringUtils.isEmpty(orginImageCaptcha) || !StringUtils.equalsIgnoreCase(imageCaptcha, orginImageCaptcha)) {
            return JsonResult.error(BaseException.IMAGE_CAPTCHA_ERROR, messageSource);
        }
        authSession.setImageCaptcha(StringUtils.EMPTY);

        String code = mobileCaptchaRemoteService.genCaptcha(mobile, 10 * 60, 60);

        authSession.setMobileCaptcha(code);
        authorizeSessionRemoteService.updateSession(authSession);

        JsonResult result = new JsonResult();

        if (StringUtils.equals("dev", env)) {
            result.setData(code);
        } else {
            smsRemoteService.sendTuimuCaptha(mobile, code);
        }
        return result;
    }

    /* *//**
          * 
          * 功能描述: <br>
          * 〈功能详细描述〉登录
          *
          * @param request
          * @param response
          * @param loginName
          * @param authorizeCode
          * @param isRememberLogin
          * @param imageCaptcha
          * @return
          *//*
            * @RequestMapping(value = "v1/login", method = RequestMethod.POST) public JsonResult
            * login(HttpServletRequest request, HttpServletResponse response,
            * @RequestParam(value = "loginName", required = true) String loginName,
            * @RequestParam(value = "authorizeCode", required = true) String authorizeCode,
            * @RequestParam(value = "isRememberLogin", required = false, defaultValue = "false") boolean
            * isRememberLogin, String imageCaptcha) { AuthSession authSession = getSession(request); if (authSession ==
            * null) { logger.error("Login error. Session is null."); return JsonResult.error(BaseException.PAGE_INVALID,
            * messageSource); } // 验证图片验证码 if (StringUtils.isNotEmpty(authSession.getImageCaptcha()) &&
            * !StringUtils.equalsIgnoreCase(imageCaptcha, authSession.getImageCaptcha())) {
            * authSession.setImageCaptcha(StringUtils.EMPTY); authorizeSessionRemoteService.updateSession(authSession);
            * return JsonResult.error(BaseException.IMAGE_CAPTCHA_ERROR, messageSource); } try { if
            * (logger.isDebugEnabled()) { logger.debug(
            * "login by session[{}], ip[{}], requestURI[{}], loginName[{}], authorizeCode[{}], isRememberLogin[{}]",
            * authSession.getSessionId(), HttpRequestUtil.getRemoteIp(request), "auth/v1/login", loginName,
            * authorizeCode, isRememberLogin); } authSession =
            * authorizeSessionRemoteService.login(authSession.getSessionId(), HttpRequestUtil.getRemoteIp(request),
            * "/auth/v1/login", loginName, authorizeCode, isRememberLogin); authSession.setLoginFails(0);
            * authorizeSessionRemoteService.updateSession(authSession); CookiesManager.setCookie(request, response,
            * "accessToken", authSession.getSessionId(), getSessionExpiredTime(isRememberLogin)); } catch
            * (AuthorizeException e) { return JsonResult.error(e.getErrorCode(), messageSource); } JsonResult jsonResult
            * = new JsonResult(); Admin admin = adminRemoteService.getById(authSession.getNumberUserId()); if (null !=
            * admin) { Map<String, Object> data = new HashMap<>(); data.put("userId", admin.getId()); data.put("name",
            * admin.getName()); jsonResult.setData(data); } return jsonResult; } private int
            * getSessionExpiredTime(boolean isRememberLogin) { return isRememberLogin ? REMEMBER_SESSION_EXPIRED_TIME :
            * SESSION_EXPIRED_TIME; }
            */

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉登出
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "v1/logout", method = RequestMethod.GET)
    public JsonResult loginout(HttpServletRequest request, HttpServletResponse response) {
        AuthSession session = getSession(request);
        if (null != session && StringUtils.isNotEmpty(session.getSessionId())) {
            authorizeSessionRemoteService.logoutSession(session.getSessionId());
        }
        return JsonResult.success();
    }

    /**
     * 
     * 功能描述: <br>
     * 进入重置密码页面（验证手机并返回身份码）
     *
     * @param request
     * @param mobile 手机号
     * @param mobileCaptcha 手机验证码
     * @return 身份码
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @RequestMapping(value = "v1/password/prepareReset", method = RequestMethod.POST)
    public JsonResult prepareResetPassword(HttpServletRequest request, @RequestParam(required = true) String mobile,
            @RequestParam(required = true) String mobileCaptcha) {
        AuthSession authSession = getSession(request);
        if (authSession == null) {
            logger.error("register error. Session is null.");
            return JsonResult.error(BaseException.PAGE_INVALID, messageSource);
        }
        boolean checkBool = checkMobileCaptcha(authSession, mobile, mobileCaptcha, true);
        if (!checkBool) {
            return JsonResult.error(BaseException.MOBILE_CAPTCHA_ERROR, messageSource);
        }
        // 验证通过生成身份凭证code并缓存
        JsonResult result = new JsonResult();
        Passport passPort = passportRemoteService.getPassportByMobile(mobile, UserType.TUIMUAM);
        String voucherCode = null;
        if (null != passPort) {
            voucherCode = uniqueVoucherCodeRemoteService.genVoucherCode(VoucherType.FORGET_PASSWORD,
                    VoucherObjType.PASSPORT, String.valueOf(passPort.getId()), 10, TimeUnit.MINUTES);
        }
        Map<String, Object> data = new HashMap<>();
        data.put("voucherCode", voucherCode);
        result.setData(data);
        return result;
    }
}