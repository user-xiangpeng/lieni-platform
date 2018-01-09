package com.lieni.liexiaotao.web.resume.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lieni.core.bean.Pager;
import com.lieni.core.exception.NeedLoginException;
import com.lieni.core.web.response.JsonResult;
import com.lieni.core.web.response.PageJsonResult;
import com.lieni.liexiaotao.api.resume.exception.ResumeRemarkException;
import com.lieni.liexiaotao.api.resume.remote.IResumeRemarkRemoteService;
import com.lieni.liexiaotao.resume.model.ResumeRemark;
import com.lieni.liexiaotao.web.base.controller.BaseController;

@RestController
@RequestMapping("resume/remark")
public class ResumeRemarkController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(ResumeRemarkController.class);

    @Autowired
    private IResumeRemarkRemoteService resumeRemarkRemoteService;

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉创建备注
     *
     * @param request
     * @param resumeId
     * @param content
     * @return
     * @throws NeedLoginException
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @RequestMapping(value = "v1/add", method = RequestMethod.POST)
    public JsonResult create(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId,
            @RequestParam(value = "content", required = false) String content) throws NeedLoginException {
        String userId = checkLogin(request);
        try {
            long remarkId = resumeRemarkRemoteService.creat(userId, resumeId, content);
            return JsonResult.success(remarkId);
        } catch (ResumeRemarkException e) {
            logger.error(" add resume remark fail ===>" + e);
            return JsonResult.error(e.getErrorCode(), messageSource);
        }
    }

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉 列表
     *
     * @param request
     * @param resumeId
     * @return
     * @throws NeedLoginException
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @RequestMapping(value = "v1/list", method = RequestMethod.GET)
    public PageJsonResult list(HttpServletRequest request,
            @RequestParam(value = "resumeId", required = true) String resumeId,
            @RequestParam(value = "page", defaultValue = "1") int page,
            @RequestParam(value = "size", defaultValue = "10") int size) throws NeedLoginException {
        checkLogin(request);
        PageJsonResult result = new PageJsonResult();
        int totalResults = resumeRemarkRemoteService.getCountByResumeId(resumeId);
        if (totalResults <= 0) {
            return result;
        }
        Pager pager = new Pager(page, size, totalResults);
        List<ResumeRemark> list = resumeRemarkRemoteService.list(resumeId, pager.getFirstResult(), pager.getResults());
        result.setResult(pager, list);
        return result;
    }

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉删除备注
     *
     * @param request
     * @param id
     * @return
     * @throws NeedLoginException
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    @RequestMapping(value = "v1/delete", method = RequestMethod.POST)
    public JsonResult methodName(HttpServletRequest request, @RequestParam(value = "id", required = true) long id)
            throws NeedLoginException {
        String userId = checkLogin(request);
        boolean status = false;
        try {
            status = resumeRemarkRemoteService.delete(userId, id);
        } catch (ResumeRemarkException e) {
            logger.error(" delete resume remark fail ===>" + e);
            return JsonResult.error(e.getErrorCode(), messageSource);
        }
        return JsonResult.success(status);
    }
}
