package com.lieni.liexiaotao.web.base.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;

import com.lieni.auth.bean.AuthSession;
import com.lieni.auth.bean.Realm;
import com.lieni.auth.remote.IAuthorizeSessionRemoteService;
import com.lieni.auth.remote.IMobileCaptchaRemoteService;
import com.lieni.core.Constants;
import com.lieni.core.exception.NeedLoginException;
import com.lieni.core.file.excel.ExcelType;
import com.lieni.core.file.excel.ExcelWriter;
import com.lieni.core.util.HttpRequestUtil;

public class BaseController {

    public static final Logger logger = LoggerFactory.getLogger(BaseController.class);

    @Autowired
    protected MessageSource messageSource;
    @Autowired
    protected IAuthorizeSessionRemoteService authorizeSessionRemoteService;
    @Autowired
    protected IMobileCaptchaRemoteService mobileCaptchaRemoteService;

    protected AuthSession getSession(HttpServletRequest request) {
        return (AuthSession) request.getAttribute("authSession");
    }

    protected AuthSession getOrCreateSession(HttpServletRequest request) {
        AuthSession authSession = (AuthSession) request.getAttribute("authSession");
        if (null == authSession) {
            authSession = authorizeSessionRemoteService.createSession(HttpRequestUtil.getRemoteIp(request),
                    Realm.TUIMUAM);
        }
        return authSession;
    }

    protected boolean hasLogin(HttpServletRequest request) {
        AuthSession authSession = (AuthSession) request.getAttribute("authSession");
        return authSession != null && authSession.getNumberUserId() > 0;
    }

    protected String checkLogin(HttpServletRequest request) throws NeedLoginException {
        AuthSession authSession = getSession(request);
        if (authSession == null) {
            logger.error("register error. Session is null.");
            throw new NeedLoginException();
        }
        // 已登录用户session中应该有用户id
        String userId = authSession.getUserId();
        if (StringUtils.isBlank(userId)) {
            throw new NeedLoginException();
        }

        return userId;
    }

    /**
     * 
     * 功能描述: <br>
     * 校验手机验证码
     *
     * @param authSession
     * @param mobile 手机号
     * @param mobileCaptcha 手机验证码
     * @param isGetAndRemove 获取验证码并删除
     * @return
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    protected boolean checkMobileCaptcha(AuthSession authSession, String mobile, String mobileCaptcha,
            boolean isGetAndRemove) {
        String orginMobileCaptcha = authSession.getMobileCaptcha();
        if (logger.isDebugEnabled()) {
            logger.debug("orginMobileCaptcha:{}, mobileCaptcha:{}, redisMobileCaptcha:{}", orginMobileCaptcha,
                    mobileCaptcha, mobileCaptchaRemoteService.takeCaptcha(mobile));
        }
        if (StringUtils.isEmpty(orginMobileCaptcha) || !StringUtils.equalsIgnoreCase(mobileCaptcha, orginMobileCaptcha)
                || (isGetAndRemove ? !mobileCaptchaRemoteService.checkAndRemoveCaptcha(mobile, mobileCaptcha)
                        : !mobileCaptchaRemoteService.isValidCaptcha(mobile, mobileCaptcha))) {
            return false;
        }
        authSession.setMobileCaptcha(StringUtils.EMPTY);
        authorizeSessionRemoteService.updateSession(authSession);
        return true;
    }

    /**
     * 
     * 功能描述: <br>
     * 输出文件
     *
     * @param response
     * @param fileName 文件名
     * @param file 文件
     * @throws UnsupportedEncodingException
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    protected void outputFile(HttpServletResponse response, String parth, String fileName, byte[] file)
            throws UnsupportedEncodingException {
        if (ArrayUtils.isEmpty(file)) {
            logger.info("get file download url failed.");
            return;
        }
        // 设置相关头信息
        response.setContentType("multipart/form-data");
        fileName = StringUtils.isNotEmpty(fileName) ? fileName : parth.substring(parth.lastIndexOf("/"));
        // fileName = new String(fileName.getBytes("iso-8859-1"), Constants.UTF8);
        // 文件名编码
        try {
            fileName = URLEncoder.encode(fileName, Constants.UTF8);
        } catch (UnsupportedEncodingException e) {
            logger.error("fileName encode failed. errorMessage[{}]", e.getMessage());
        }
        response.setHeader("Content-disposition", "attachment;filename=" + fileName);
        response.addHeader("Pragma", "no-cache");
        response.addHeader("Cache-Control", "no-cache");
        response.addDateHeader("Expries", 0);
        // 返回文件
        OutputStream out = null;
        try {
            out = response.getOutputStream();
            out.write(file);
            out.flush();
        } catch (IOException e) {
            logger.error("download file failed. errorMessage[{}]", e.getMessage());
        } finally {
            if (null != out) {
                try {
                    out.close();
                } catch (IOException e) {
                    logger.error("OutputStream close failed. errorMessage[{}]", e.getMessage());
                }
            }
        }
    }

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉输出excle
     *
     * @param titles 标题
     * @param contents 内容
     * @param fileName 文件名
     * @param response
     */
    protected void createExcle(List<Object> titles, List<List<Object>> contents, String fileName,
            HttpServletResponse response) {

        response.setContentType("application/msword;charset=UTF-8");
        response.setHeader("Content-disposition", "attachment;filename=" + fileName);
        response.addHeader("Pragma", "no-cache");
        response.addHeader("Cache-Control", "no-cache");
        response.addDateHeader("Expries", 0);
        ExcelWriter excelWriter = null;
        OutputStream os = null;
        try {

            excelWriter = new ExcelWriter(null, ExcelType.XLSX);
            excelWriter.createSheet("sheet");
            excelWriter.addRow("sheet", 1, titles);// 标题
            for (int i = 0; i < contents.size(); i++) {// 内容
                excelWriter.addRow("sheet", i + 2, contents.get(i));
            }
            os = response.getOutputStream();
            excelWriter.flush(os);
        } catch (IOException e) {
        } finally {
            if (os != null) {
                try {
                    os.close();
                } catch (IOException e) {
                }
            }
        }
    }
}
