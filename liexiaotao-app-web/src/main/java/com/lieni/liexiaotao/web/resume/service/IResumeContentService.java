package com.lieni.liexiaotao.web.resume.service;

import java.util.List;

import com.lieni.liexiaotao.web.resume.view.BackgroungSurveyView;
import com.lieni.liexiaotao.web.resume.view.EducationExperienceView;
import com.lieni.liexiaotao.web.resume.view.JobIntentionView;
import com.lieni.liexiaotao.web.resume.view.LanguageView;
import com.lieni.liexiaotao.web.resume.view.ProductView;
import com.lieni.liexiaotao.web.resume.view.ProjectExperienceView;
import com.lieni.liexiaotao.web.resume.view.ResumeEducationBackgroundView;
import com.lieni.liexiaotao.web.resume.view.ResumeInfoView;
import com.lieni.liexiaotao.web.resume.view.ResumeReportView;
import com.lieni.liexiaotao.web.resume.view.ResumeWorkBackgroundView;
import com.lieni.liexiaotao.web.resume.view.TrainingExperienceView;
import com.lieni.liexiaotao.web.resume.view.WorkExperienceView;

public interface IResumeContentService {

    /**
     * 根据用户和简历获取简历背调
     * 
     * @param userId
     * @param resumeId
     * @return
     */
    BackgroungSurveyView getBackgroungSurveysByUserIdAndResumeId(String userId, String resumeId);

    /**
     * 
     * 功能描述: <br>
     * 根据用户和简历获取简历基本信息
     *
     * @param userId 用户id
     * @param resumeId 简历id
     * @return ResumeInfoView
     */
    ResumeInfoView getResumeInfoViewByUserIdAndResumeId(String userId, String resumeId);

    /**
     * 
     * 功能描述: <br>
     * 根据用户和简历获取简历推荐报告（猎头评语）
     *
     * @param userId
     * @param resumeId
     * @return ResumeReport
     */
    ResumeReportView getResumeReportViewByUserIdAndResumeId(String userId, String resumeId);

    /**
     * 
     * 功能描述: <br>
     * 获取简历基本信息
     *
     * @param userId 用户id
     * @param resumeId 简历id
     * @return ResumeInfoView
     */
    ResumeInfoView getResumeInfoView(String userId, String resumeId);

    /**
     * 
     * 功能描述: <br>
     * 获取求职意向信息
     *
     * @param userId 用户id
     * @param resumeId 简历id
     * @return JobIntentionView
     */
    JobIntentionView getJobIntentionViewByUserIdAndResumeId(String userId, String resumeId);

    /**
     * 
     * 功能描述: <br>
     * 获取工作经历
     *
     * @param userId 用户id
     * @param resumeId 简历id
     * @return List<WorkExperienceView>
     */
    List<WorkExperienceView> listWorkExperience(String userId, String resumeId);

    /**
     * 
     * 功能描述: <br>
     * 获取教育经历
     *
     * @param userId 用户id
     * @param resumeId 简历id
     * @return List<EducationExperienceView>
     */
    List<EducationExperienceView> listEducationExperience(String userId, String resumeId);

    /**
     * 
     * 功能描述: <br>
     * 获取项目经历
     *
     * @param userId 用户id
     * @param resumeId 简历id
     * @return List<ProjectExperienceView>
     */
    List<ProjectExperienceView> listProjectExperience(String userId, String resumeId);

    /**
     * 
     * 功能描述: <br>
     * 语言能力
     *
     * @param userId 用户id
     * @param resumeId 简历id
     * @return List<LanguageView>
     */
    List<LanguageView> listLanguageAbility(String userId, String resumeId);

    /**
     * 
     * 功能描述: <br>
     * 培训经历
     *
     * @param userId 用户id
     * @param resumeId 简历id
     * @return List<TrainingExperienceView>
     */
    List<TrainingExperienceView> listTrainingExperience(String userId, String resumeId);

    /**
     * 
     * 功能描述: <br>
     * 作品/附件
     *
     * @param userId 用户id
     * @param resumeId 简历id
     * @return List<ProductView>
     */
    List<ProductView> listProduct(String userId, String resumeId);

    /**
     * 
     * 功能描述: <br>
     * 检查简历是否有更新
     *
     * @param userId 用户id
     * @param resumeId 简历id
     * @return boolean
     */
    boolean checkUpdate(String userId, String resumeId);

    /**
     * 
     * 功能描述: <br>
     * 未登录或为购买时，判断简历是否有推荐报告
     *
     * @param resumeId 简历id
     * @return boolean
     */
    boolean isExistReport(String resumeId);

    /**
     * 
     * 功能描述: <br>
     * 获取工作背调精简信息
     *
     * @param backgroundId 背调id
     * @param resumeId 简历id
     * @return List<ResumeWorkBackgroundView>
     */
    List<ResumeWorkBackgroundView> listResumeWorkBackgroundSimple(long backgroundId, String resumeId);

    /**
     * 
     * 功能描述: <br>
     * 获取教育背调精简信息
     *
     * @param backgroundId 背调id
     * @param resumeId 简历id
     * @return List<ResumeEducationBackgroundView>
     */
    List<ResumeEducationBackgroundView> listResumeEducationBackgroundSimple(long backgroundId, String resumeId);

}
