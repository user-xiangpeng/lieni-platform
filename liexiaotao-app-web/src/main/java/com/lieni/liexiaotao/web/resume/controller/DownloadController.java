package com.lieni.liexiaotao.web.resume.controller;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.URLEncoder;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lieni.core.Constants;
import com.lieni.core.exception.NeedLoginException;
import com.lieni.core.util.DateTimeUtil;
import com.lieni.core.web.response.JsonResult;
import com.lieni.liexiaotao.api.resume.exception.ResumeException;
import com.lieni.liexiaotao.web.base.controller.BaseController;
import com.lieni.liexiaotao.web.resume.service.IResumeDownloadService;
import com.lieni.liexiaotao.web.resume.service.impl.ResumeService;

import freemarker.template.Configuration;
import freemarker.template.Template;

@RestController
@RequestMapping("download")
public class DownloadController extends BaseController {

    private static Logger logger = LoggerFactory.getLogger(DownloadController.class);

    @Autowired
    private IResumeDownloadService resumeDownloadService;

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉简历下载
     *
     * @param request
     * @param response
     * @param resumeId
     * @return
     * @throws NeedLoginException
     */
    @RequestMapping(value = "v1/resume", method = RequestMethod.GET)
    public JsonResult resumeDownload(HttpServletRequest request, HttpServletResponse response,
            @RequestParam(value = "resumeId", required = true) String resumeId) throws NeedLoginException {
        String loginUserId = checkLogin(request);
        try {
            resumeDownloadService.download(loginUserId, resumeId, response);
        } catch (ResumeException e) {
            logger.error(" download resume error==>" + e.getMessage(), e);
            return JsonResult.error(e.getErrorCode(), messageSource);

        }
        return JsonResult.success();
    }

    @RequestMapping(value = "v1/mytest", method = RequestMethod.GET)
    public JsonResult methodName(HttpServletRequest request, HttpServletResponse response,
            @RequestParam(value = "name", required = true) String lastName,
            @RequestParam(value = "v", required = true) String v) {
        testDown(response, lastName, v);
        return JsonResult.success();
    }

    private void testDown(HttpServletResponse response, String lastName, String v) {

        Configuration configuration = new Configuration();
        configuration.setDefaultEncoding(Constants.UTF8);
        configuration.setClassForTemplateLoading(ResumeService.class, "/template");
        Template t = null;
        try {
            t = configuration.getTemplate("resume_info_template" + v + ".ftl");
        } catch (IOException e) {

        }
        StringBuffer docName = new StringBuffer();
        // 文件名

        docName.append(DateTimeUtil.dateString(new Date(), "yyyy-MM-dd")).append(lastName);
        docName.append("." + lastName);
        String targetFileName;
        try {
            targetFileName = URLEncoder.encode(docName.toString().replace(" ", ""), Constants.UTF8);
        } catch (UnsupportedEncodingException e1) {
            logger.error("targetFileName error ==> ", e1);
            targetFileName = UUID.randomUUID().toString().replace(com.lieni.core.util.StringUtils.HYPHEN, "");
        }
        // response.setContentType("application/msword;charset=UTF-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/msword");
        response.setHeader("Content-disposition", "attachment;filename=" + targetFileName);
        response.addHeader("Pragma", "no-cache");
        response.addHeader("Cache-Control", "no-cache");
        response.addDateHeader("Expries", 0);
        Writer wrter = null;
        Map<String, Object> dataMap = new HashMap<>();
        dataMap.put("name", "nn");
        try {
            wrter = new OutputStreamWriter(response.getOutputStream(), "utf-8");
            t.process(dataMap, wrter);
            wrter.flush();
        } catch (Exception ex) {
        } finally {
            if (null != wrter) {
                try {
                    wrter.close();
                } catch (IOException e) {
                }
            }
        }

    }
}
