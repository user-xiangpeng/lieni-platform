package com.lieni.liexiaotao.web.resume.service;

import java.util.Map;

public interface IResumeForwardService {

    public static final String USER_ID = "userId";
    public static final String RESUME_ID = "resumeId";

    /**
     * 
     * 功能描述: <br>
     * 解析redis中的code获取用户id和简历id
     *
     * @param voucherCode
     * @return map ，key：userId，key：resumeId
     */
    Map<String, String> getUserIdAndResumeIdByCode(String voucherCode);
}
