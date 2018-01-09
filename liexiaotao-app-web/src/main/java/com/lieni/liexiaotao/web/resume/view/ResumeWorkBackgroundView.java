package com.lieni.liexiaotao.web.resume.view;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.collections4.CollectionUtils;

import com.lieni.resume.model.ResumeWorkBackground;
import com.lieni.resume.model.ResumeWorkBgRespondent;
import com.lieni.resume.model.VersionResumeWorkBackground;
import com.lieni.resume.model.VersionResumeWorkBgRespondent;

public class ResumeWorkBackgroundView {

    private Long id;

    private Long backgroundSurveyId;

    private Integer startYear;

    private Integer startMonth;

    private Integer endYear;

    private Integer endMonth;

    private String company;

    private String job;

    private String respondentName;

    private String respondentPhone;

    private String respondentJob;

    private String relation;

    private String feedbackDesc;

    private String createUserEmail;

    private String createUserJobNumber;

    private String createUserId;

    private Date createTime;

    private String updateUserId;

    private String updateUserEmail;

    private String updateUserJobNumber;

    private Date updateTime;

    private Boolean defunct;

    private List<ResumeWorkBgRespondentView> bgRespondents; // 背调联系人

    private String startTime;
    private String endTime;
    private String spendTime;

    public ResumeWorkBackgroundView() {
        super();
    }

    public ResumeWorkBackgroundView(Integer startYear, Integer startMonth, Integer endYear, Integer endMonth,
            String company, String job) {
        this.startYear = startYear;
        this.startMonth = startMonth;
        this.endYear = endYear;
        this.endMonth = endMonth;
        this.company = company;
        this.job = job;
    }

    public ResumeWorkBackgroundView(ResumeWorkBackground resumeWorkBackground,
            List<ResumeWorkBgRespondent> respondents) {
        super();
        this.id = resumeWorkBackground.getId();
        this.backgroundSurveyId = resumeWorkBackground.getBackgroundSurveyId();
        this.startYear = resumeWorkBackground.getStartYear();
        this.startMonth = resumeWorkBackground.getStartMonth();
        this.endYear = resumeWorkBackground.getEndYear();
        this.endMonth = resumeWorkBackground.getEndMonth();
        this.company = resumeWorkBackground.getCompany();
        this.job = resumeWorkBackground.getJob();
        List<ResumeWorkBgRespondentView> views = new ArrayList<ResumeWorkBgRespondentView>();
        if (CollectionUtils.isNotEmpty(respondents)) {
            for (ResumeWorkBgRespondent respondent : respondents) {
                views.add(new ResumeWorkBgRespondentView(respondent));
            }
        }
        this.bgRespondents = views;
    }

    public ResumeWorkBackgroundView(VersionResumeWorkBackground resumeWorkBackground,
            List<VersionResumeWorkBgRespondent> versionResumeWorkBgRespondents) {
        super();
        this.id = resumeWorkBackground.getId();
        this.backgroundSurveyId = resumeWorkBackground.getBackgroundSurveyId();
        this.startYear = resumeWorkBackground.getStartYear();
        this.startMonth = resumeWorkBackground.getStartMonth();
        this.endYear = resumeWorkBackground.getEndYear();
        this.endMonth = resumeWorkBackground.getEndMonth();
        this.company = resumeWorkBackground.getCompany();
        this.job = resumeWorkBackground.getJob();
        List<ResumeWorkBgRespondentView> views = new ArrayList<ResumeWorkBgRespondentView>();
        if (CollectionUtils.isNotEmpty(versionResumeWorkBgRespondents)) {
            for (VersionResumeWorkBgRespondent versionResumeWorkBgRespondent : versionResumeWorkBgRespondents) {
                views.add(new ResumeWorkBgRespondentView(versionResumeWorkBgRespondent));
            }
        }
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getBackgroundSurveyId() {
        return backgroundSurveyId;
    }

    public void setBackgroundSurveyId(Long backgroundSurveyId) {
        this.backgroundSurveyId = backgroundSurveyId;
    }

    public Integer getStartYear() {
        return startYear;
    }

    public void setStartYear(Integer startYear) {
        this.startYear = startYear;
    }

    public Integer getStartMonth() {
        return startMonth;
    }

    public void setStartMonth(Integer startMonth) {
        this.startMonth = startMonth;
    }

    public Integer getEndYear() {
        return endYear;
    }

    public void setEndYear(Integer endYear) {
        this.endYear = endYear;
    }

    public Integer getEndMonth() {
        return endMonth;
    }

    public void setEndMonth(Integer endMonth) {
        this.endMonth = endMonth;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public List<ResumeWorkBgRespondentView> getBgRespondents() {
        return bgRespondents;
    }

    public void setBgRespondents(List<ResumeWorkBgRespondentView> bgRespondents) {
        this.bgRespondents = bgRespondents;
    }

    public String getRespondentName() {
        return respondentName;
    }

    public void setRespondentName(String respondentName) {
        this.respondentName = respondentName;
    }

    public String getRespondentPhone() {
        return respondentPhone;
    }

    public void setRespondentPhone(String respondentPhone) {
        this.respondentPhone = respondentPhone;
    }

    public String getRespondentJob() {
        return respondentJob;
    }

    public void setRespondentJob(String respondentJob) {
        this.respondentJob = respondentJob;
    }

    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation;
    }

    public String getFeedbackDesc() {
        return feedbackDesc;
    }

    public void setFeedbackDesc(String feedbackDesc) {
        this.feedbackDesc = feedbackDesc;
    }

    public String getCreateUserEmail() {
        return createUserEmail;
    }

    public void setCreateUserEmail(String createUserEmail) {
        this.createUserEmail = createUserEmail;
    }

    public String getCreateUserJobNumber() {
        return createUserJobNumber;
    }

    public void setCreateUserJobNumber(String createUserJobNumber) {
        this.createUserJobNumber = createUserJobNumber;
    }

    public String getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(String createUserId) {
        this.createUserId = createUserId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdateUserId() {
        return updateUserId;
    }

    public void setUpdateUserId(String updateUserId) {
        this.updateUserId = updateUserId;
    }

    public String getUpdateUserEmail() {
        return updateUserEmail;
    }

    public void setUpdateUserEmail(String updateUserEmail) {
        this.updateUserEmail = updateUserEmail;
    }

    public String getUpdateUserJobNumber() {
        return updateUserJobNumber;
    }

    public void setUpdateUserJobNumber(String updateUserJobNumber) {
        this.updateUserJobNumber = updateUserJobNumber;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Boolean getDefunct() {
        return defunct;
    }

    public void setDefunct(Boolean defunct) {
        this.defunct = defunct;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getSpendTime() {
        return spendTime;
    }

    public void setSpendTime(String spendTime) {
        this.spendTime = spendTime;
    }

}
