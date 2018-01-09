package com.lieni.liexiaotao.web.resume.service;

import javax.servlet.http.HttpServletResponse;

import com.lieni.liexiaotao.api.resume.exception.ResumeException;

public interface IResumeDownloadService {

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉简历下载
     *
     * @param userId 用户id
     * @param resumeId 简历id
     * @param response
     * @throws ResumeException
     */
    void download(String userId, String resumeId, HttpServletResponse response) throws ResumeException;

}
