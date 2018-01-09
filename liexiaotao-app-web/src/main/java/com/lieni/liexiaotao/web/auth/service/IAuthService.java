package com.lieni.liexiaotao.web.auth.service;

import com.lieni.auth.bean.AuthSession;

public interface IAuthService {
    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉登录是否需要图片验证码
     *
     * @param session
     * @return
     */
    boolean loginNeedImageCaptcha(AuthSession session);

}
