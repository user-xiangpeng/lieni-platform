package com.lieni.liexiaotao.web.resume.view;

import com.lieni.resume.model.ResumeWorkBgRespondent;
import com.lieni.resume.model.VersionResumeWorkBgRespondent;

public class ResumeWorkBgRespondentView {

    private Long respondenId;

    private String respondentName;

    private String respondentPhone;

    private String respondentJob;

    private String relation;

    private String feedbackDesc;

    public ResumeWorkBgRespondentView() {
        super();
    }

    public ResumeWorkBgRespondentView(ResumeWorkBgRespondent respondent) {
        super();
        this.respondenId = respondent.getId();
        this.respondentName = respondent.getRespondentName();
        this.respondentPhone = respondent.getRespondentPhone();
        this.respondentJob = respondent.getRespondentJob();
        this.relation = respondent.getRelation();
        this.feedbackDesc = respondent.getFeedbackDesc();
    }

    public ResumeWorkBgRespondentView(VersionResumeWorkBgRespondent respondent) {
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

}
