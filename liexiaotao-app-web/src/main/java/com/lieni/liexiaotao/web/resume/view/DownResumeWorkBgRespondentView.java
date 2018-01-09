package com.lieni.liexiaotao.web.resume.view;

import com.lieni.resume.model.ResumeWorkBgRespondent;
import com.lieni.resume.model.VersionResumeWorkBgRespondent;

public class DownResumeWorkBgRespondentView {

    private Long respondenId;

    private String respondentName;

    private String respondentPhone;

    private String respondentJob;

    private String relation;

    private String feedbackDesc;

    private Integer startYear;
    private Integer startMonth;
    private Integer endYear;
    private Integer endMonth;
    private String startTime;
    private String endTime;
    private String spendTime;
    private String companyName;

    public DownResumeWorkBgRespondentView() {
        super();
    }

    public DownResumeWorkBgRespondentView(ResumeWorkBgRespondent respondent) {
        super();
        this.respondenId = respondent.getId();
        this.respondentName = respondent.getRespondentName();
        this.respondentPhone = respondent.getRespondentPhone();
        this.respondentJob = respondent.getRespondentJob();
        this.relation = respondent.getRelation();
        this.feedbackDesc = respondent.getFeedbackDesc();
    }

    public DownResumeWorkBgRespondentView(VersionResumeWorkBgRespondent respondent) {
        super();
        this.respondenId = respondent.getId();
        this.respondentName = respondent.getRespondentName();
        this.respondentPhone = respondent.getRespondentPhone();
        this.respondentJob = respondent.getRespondentJob();
        this.relation = respondent.getRelation();
        this.feedbackDesc = respondent.getFeedbackDesc();
    }

    public Long getRespondenId() {
        return respondenId;
    }

    public void setRespondenId(Long respondenId) {
        this.respondenId = respondenId;
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

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
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

}
