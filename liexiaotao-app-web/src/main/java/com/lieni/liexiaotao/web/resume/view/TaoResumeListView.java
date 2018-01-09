package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;
import java.util.List;

public class TaoResumeListView implements Serializable {

    private static final long serialVersionUID = -1825517488795160250L;

    private String resumeId;// 简历id
    private Boolean isBuy;// 是否购买
    private Integer gender;// 性别
    private String jobName;// 职位
    private Integer birthYear;// 出生年
    private Integer workYears;// 工作年限
    private Long workCity;// 所在城市id
    private Integer currentSalary;// 当前年薪
    private Integer highestDegree;// 最高学历
    private String highestUniversity;// 最高学历大学
    private Integer workState;// 工作状态
    private Boolean collected;// 是否收藏
    private Long updateTime;// 更新时间
    private Integer downloadCount;// 下载次数
    private List<TaoWorkExperienceListView> latestWorkExperiences;// 最近的工作经历
    private String workProjectContent;// 所有工作内容: 工作经验里面的（职责业绩，工作业绩）+项目经历里面的（项目名称，项目描述)的组合

    @Override
    public String toString() {
        return "TaoResumeListView [resumeId=" + resumeId + ", isBuy=" + isBuy + ", gender=" + gender + ", jobName="
                + jobName + ", birthYear=" + birthYear + ", workYears=" + workYears + ", workCity=" + workCity
                + ", currentSalary=" + currentSalary + ", highestDegree=" + highestDegree + ", highestUniversity="
                + highestUniversity + ", workState=" + workState + ", collected=" + collected + ", updateTime="
                + updateTime + ", latestWorkExperiences=" + latestWorkExperiences + ", workProjectContent="
                + workProjectContent + "]";
    }

    public Integer getDownloadCount() {
        return downloadCount;
    }

    public void setDownloadCount(Integer downloadCount) {
        this.downloadCount = downloadCount;
    }

    public String getWorkProjectContent() {
        return workProjectContent;
    }

    public void setWorkProjectContent(String workProjectContent) {
        this.workProjectContent = workProjectContent;
    }

    public String getResumeId() {
        return resumeId;
    }

    public void setResumeId(String resumeId) {
        this.resumeId = resumeId;
    }

    public Boolean getIsBuy() {
        return isBuy;
    }

    public void setIsBuy(Boolean isBuy) {
        this.isBuy = isBuy;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public Integer getBirthYear() {
        return birthYear;
    }

    public void setBirthYear(Integer birthYear) {
        this.birthYear = birthYear;
    }

    public Integer getWorkYears() {
        return workYears;
    }

    public void setWorkYears(Integer workYears) {
        this.workYears = workYears;
    }

    public Long getWorkCity() {
        return workCity;
    }

    public void setWorkCity(Long workCity) {
        this.workCity = workCity;
    }

    public Integer getCurrentSalary() {
        return currentSalary;
    }

    public void setCurrentSalary(Integer currentSalary) {
        this.currentSalary = currentSalary;
    }

    public Integer getHighestDegree() {
        return highestDegree;
    }

    public void setHighestDegree(Integer highestDegree) {
        this.highestDegree = highestDegree;
    }

    public String getHighestUniversity() {
        return highestUniversity;
    }

    public void setHighestUniversity(String highestUniversity) {
        this.highestUniversity = highestUniversity;
    }

    public Integer getWorkState() {
        return workState;
    }

    public void setWorkState(Integer workState) {
        this.workState = workState;
    }

    public Boolean getCollected() {
        return collected;
    }

    public void setCollected(Boolean collected) {
        this.collected = collected;
    }

    public Long getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Long updateTime) {
        this.updateTime = updateTime;
    }

    public List<TaoWorkExperienceListView> getLatestWorkExperiences() {
        return latestWorkExperiences;
    }

    public void setLatestWorkExperiences(List<TaoWorkExperienceListView> latestWorkExperiences) {
        this.latestWorkExperiences = latestWorkExperiences;
    }

}
