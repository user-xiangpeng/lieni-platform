package com.lieni.liexiaotao.web.auth.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.lieni.auth.bean.AuthSession;
import com.lieni.auth.remote.IAuthorizeSessionRemoteService;
import com.lieni.liexiaotao.web.auth.service.IAuthService;

@Service
public class AuthService implements IAuthService {
    @Value("${login.fails.ip}")
    private int loginFailsIp;
    @Value("${login.fails.session}")
    private int loginFailsSession;
    @Autowired
    private IAuthorizeSessionRemoteService authorizeSessionRemoteService;

    @Override
    public boolean loginNeedImageCaptcha(AuthSession session) {
        if (null == session) {
            return false;
        }
        if (session.getLoginFails() >= loginFailsSession) {
            return true;
        }
        if (authorizeSessionRemoteService.getIpLoginFails(session.getRemoteIp()) >= loginFailsIp) {
            return true;
        }
        // 刷新已经存在的验证码
        if (StringUtils.isNotEmpty(session.getImageCaptcha())) {
            session.setImageCaptcha(StringUtils.EMPTY);
            authorizeSessionRemoteService.updateSession(session);
        }
        return false;
    }

}
