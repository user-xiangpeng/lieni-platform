package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;

import com.lieni.resume.model.CvProjectExperience;
import com.lieni.resume.model.VersionCvProjectExperience;

public class ProjectExperienceView implements Serializable {

    private static final long serialVersionUID = -4164476168595239305L;

    private Integer id;

    private String candidateId;

    private Integer startYear;

    private Integer startMonth;

    private Integer endYear;

    private Integer endMonth;

    private String projectName;

    private String projectDesc;

    private String responsibilityDesc;

    private String startTime;// 开始时间
    private String endTime;// 结束时间
    private String spendTime;// 花费时间

    public ProjectExperienceView() {
        super();
    }

    public ProjectExperienceView(CvProjectExperience cvProjectExperience) {
        this.id = cvProjectExperience.getId();
        this.candidateId = cvProjectExperience.getResumeId();
        this.startYear = cvProjectExperience.getStartYear();
        this.startMonth = cvProjectExperience.getStartMonth();
        this.endYear = cvProjectExperience.getEndYear();
        this.endMonth = cvProjectExperience.getEndMonth();
        this.projectName = cvProjectExperience.getProjectName();
        this.projectDesc = cvProjectExperience.getProjectDesc();
        this.responsibilityDesc = cvProjectExperience.getResponsibilityDesc();
    }

    public ProjectExperienceView(VersionCvProjectExperience versionCvProjectExperience) {
        this.candidateId = versionCvProjectExperience.getResumeId();
        this.startYear = versionCvProjectExperience.getStartYear();
        this.startMonth = versionCvProjectExperience.getStartMonth();
        this.endYear = versionCvProjectExperience.getEndYear();
        this.endMonth = versionCvProjectExperience.getEndMonth();
        this.projectName = versionCvProjectExperience.getProjectName();
        this.projectDesc = versionCvProjectExperience.getProjectDesc();
        this.responsibilityDesc = versionCvProjectExperience.getResponsibilityDesc();
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

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getProjectDesc() {
        return projectDesc;
    }

    public void setProjectDesc(String projectDesc) {
        this.projectDesc = projectDesc;
    }

    public String getResponsibilityDesc() {
        return responsibilityDesc;
    }

    public void setResponsibilityDesc(String responsibilityDesc) {
        this.responsibilityDesc = responsibilityDesc;
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
