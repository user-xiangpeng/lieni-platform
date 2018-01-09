package com.lieni.liexiaotao.web.resume.service;

import java.util.Date;

import com.lieni.liexiaotao.api.resume.bean.TaoResumeSortTypeEnum;
import com.lieni.liexiaotao.api.resume.bean.TaoResumeSortValueEnum;
import com.lieni.liexiaotao.api.resume.exception.ResumeException;
import com.lieni.liexiaotao.api.resume.exception.ResumePurchaseException;
import com.lieni.liexiaotao.web.resume.view.TaoResumeListResult;
import com.lieni.search.dto.ReqTaoResumePublicDto;

public interface IResumeService {
    /**
     * 淘人才搜索列表
     * 
     * @param userId 用户id
     * @param searchWords 搜索词
     * @param isRecentWorkExperience 是否最近工作经历
     * @param reqTaoResumePublicDto 搜索包装类
     * @param sortValue 排序值
     * @param sortType 排序类型
     * @param start 起始下标
     * @param maxRows 获取数量
     * @return
     */
    TaoResumeListResult listPublicResume(String userId, String searchWords, boolean isRecentWorkExperience,
            ReqTaoResumePublicDto reqTaoResumePublicDto, TaoResumeSortValueEnum sortValue,
            TaoResumeSortTypeEnum sortType, int start, int maxRows);

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉统计授权过简历数
     *
     * @return
     */
    int countAuthPublicResume();

    /***
     * 〈功能详细描述〉购买简历
     * 
     * @param operatorId 操作者id
     * @param userId 购买人id
     * @param resumeId 简历id
     * @return 购买记录的主键id
     * @throws ResumeException
     * @throws ResumePurchaseException
     */

    long create(String operatorId, String userId, String resumeId) throws ResumePurchaseException, ResumeException;

    /**
     * 
     * 功能描述: <br>
     * 〈功能详细描述〉统计一段时间内授权的简历数
     *
     * @param startTime 开始时间
     * @param endTime 结束时间
     * @return 数量
     */
    int countBetweenTimeResume(Date startTime, Date endTime);

}
