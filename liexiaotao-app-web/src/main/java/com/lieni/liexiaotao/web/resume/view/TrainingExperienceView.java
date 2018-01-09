package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;

import com.lieni.resume.model.CvTrainingExperience;
import com.lieni.resume.model.VersionCvTrainingExperience;

public class TrainingExperienceView implements Serializable {

    private static final long serialVersionUID = -4164476168595239305L;

    private Integer id;

    private String candidateId;

    private Integer startYear;

    private Integer startMonth;

    private Integer endYear;

    private Integer endMonth;

    private String trainingOrganization;

    private String trainingName;

    private String trainingPlace;

    private String trainingCertificate;

    private String trainingDesc;

    private String startTime;// 开始时间
    private String endTime;// 结束时间
    private String spendTime;// 花费时间

    public TrainingExperienceView() {
        super();
    }

    public TrainingExperienceView(CvTrainingExperience cvTrainingExperience) {
        this.id = cvTrainingExperience.getId();
        this.candidateId = cvTrainingExperience.getResumeId();
        this.startYear = cvTrainingExperience.getStartYear();
        this.startMonth = cvTrainingExperience.getStartMonth();
        this.endYear = cvTrainingExperience.getEndYear();
        this.endMonth = cvTrainingExperience.getEndMonth();
        this.trainingName = cvTrainingExperience.getTrainingName();
        this.trainingPlace = cvTrainingExperience.getTrainingPlace();
        this.trainingCertificate = cvTrainingExperience.getTrainingCertificate();
        this.trainingDesc = cvTrainingExperience.getTrainingDesc();
        this.trainingOrganization = cvTrainingExperience.getTrainingOrganization();
    }

    public TrainingExperienceView(VersionCvTrainingExperience versionCvTrainingExperience) {
        this.candidateId = versionCvTrainingExperience.getResumeId();
        this.startYear = versionCvTrainingExperience.getStartYear();
        this.startMonth = versionCvTrainingExperience.getStartMonth();
        this.endYear = versionCvTrainingExperience.getEndYear();
        this.endMonth = versionCvTrainingExperience.getEndMonth();
        this.trainingName = versionCvTrainingExperience.getTrainingName();
        this.trainingPlace = versionCvTrainingExperience.getTrainingPlace();
        this.trainingCertificate = versionCvTrainingExperience.getTrainingCertificate();
        this.trainingDesc = versionCvTrainingExperience.getTrainingDesc();
        this.trainingOrganization = versionCvTrainingExperience.getTrainingOrganization();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(String candidateId) {
        this.candidateId = candidateId;
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

    public String getTrainingName() {
        return trainingName;
    }

    public void setTrainingName(String TrainingName) {
        this.trainingName = TrainingName;
    }

    public String getTrainingDesc() {
        return trainingDesc;
    }

    public void setTrainingDesc(String TrainingDesc) {
        this.trainingDesc = TrainingDesc;
    }

    public String getResponsibilityDesc() {
        return trainingCertificate;
    }

    public void setResponsibilityDesc(String responsibilityDesc) {
        this.trainingCertificate = responsibilityDesc;
    }

    public String getTrainingPlace() {
        return trainingPlace;
    }

    public void setTrainingPlace(String trainingPlace) {
        this.trainingPlace = trainingPlace;
    }

    public String getTrainingCertificate() {
        return trainingCertificate;
    }

    public void setTrainingCertificate(String trainingCertificate) {
        this.trainingCertificate = trainingCertificate;
    }

    public String getTrainingOrganization() {
        return trainingOrganization;
    }

    public void setTrainingOrganization(String trainingOrganization) {
        this.trainingOrganization = trainingOrganization;
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
