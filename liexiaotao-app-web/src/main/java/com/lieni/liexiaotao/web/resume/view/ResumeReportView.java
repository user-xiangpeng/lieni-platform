package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;
import java.util.Date;

import com.lieni.core.util.StringUtils;
import com.lieni.resume.model.ResumeReport;
import com.lieni.resume.model.VersionResumeReport;

public class ResumeReportView implements Serializable {

    /**
     * 
     */
    private static final long serialVersionUID = -8042807197191180351L;

    private Long id;

    private String resumeId;

    private String code;

    private String jobAnalysis;

    private String professionalAnalysis;

    private String remunerationAnalysis;

    private String jobdevelopmentAnalysis;

    private String jobintentionAnalysis;

    private String characterAnalysis;

    private String familyAnalysis;

    private String advantageAnalysis;

    private String otherAnalysis;

    private String currentSalary;

    private String expectSalary;

    private Integer expectSalaryType;

    private String jobMotivation;

    private String expectInterviewTime;

    private Integer expectEntryTime;

    private Integer monthSalary;

    private Integer monthSalaryCount;

    private Integer nowSalary;

    private Integer nowSalaryType;

    private String otherIncome;

    private Integer dataSource;

    private String createUserEmail;

    private String createUserJobNumber;

    private String createUserId;

    private String createUser;

    private Date createTime;

    private String updateUserEmail;

    private String updateUserJobNumber;

    private String updateUserId;

    private Date updateTime;

    private Boolean modify = false;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getResumeId() {
        return resumeId;
    }

    public void setResumeId(String resumeId) {
        this.resumeId = resumeId;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getJobAnalysis() {
        return StringUtils.replaceBr(jobAnalysis);
    }

    public void setJobAnalysis(String jobAnalysis) {
        this.jobAnalysis = jobAnalysis;
    }

    public String getProfessionalAnalysis() {
        return StringUtils.replaceBr(professionalAnalysis);
    }

    public void setProfessionalAnalysis(String professionalAnalysis) {
        this.professionalAnalysis = professionalAnalysis;
    }

    public String getRemunerationAnalysis() {
        return StringUtils.replaceBr(remunerationAnalysis);
    }

    public void setRemunerationAnalysis(String remunerationAnalysis) {
        this.remunerationAnalysis = remunerationAnalysis;
    }

    public String getJobdevelopmentAnalysis() {
        return StringUtils.replaceBr(jobdevelopmentAnalysis);
    }

    public void setJobdevelopmentAnalysis(String jobdevelopmentAnalysis) {
        this.jobdevelopmentAnalysis = jobdevelopmentAnalysis;
    }

    public String getJobintentionAnalysis() {
        return StringUtils.replaceBr(jobintentionAnalysis);
    }

    public void setJobintentionAnalysis(String jobintentionAnalysis) {
        this.jobintentionAnalysis = jobintentionAnalysis;
    }

    public String getCharacterAnalysis() {
        return StringUtils.replaceBr(characterAnalysis);
    }

    public void setCharacterAnalysis(String characterAnalysis) {
        this.characterAnalysis = characterAnalysis;
    }

    public String getFamilyAnalysis() {
        return StringUtils.replaceBr(familyAnalysis);
    }

    public void setFamilyAnalysis(String familyAnalysis) {
        this.familyAnalysis = familyAnalysis;
    }

    public String getAdvantageAnalysis() {
        return StringUtils.replaceBr(advantageAnalysis);
    }

    public void setAdvantageAnalysis(String advantageAnalysis) {
        this.advantageAnalysis = advantageAnalysis;
    }

    public String getOtherAnalysis() {
        return StringUtils.replaceBr(otherAnalysis);
    }

    public void setOtherAnalysis(String otherAnalysis) {
        this.otherAnalysis = otherAnalysis;
    }

    public String getCurrentSalary() {
        return StringUtils.replaceBr(currentSalary);
    }

    public void setCurrentSalary(String currentSalary) {
        this.currentSalary = currentSalary;
    }

    public String getExpectSalary() {
        return StringUtils.replaceBr(expectSalary);
    }

    public void setExpectSalary(String expectSalary) {
        this.expectSalary = expectSalary;
    }

    public Integer getExpectSalaryType() {
        return expectSalaryType;
    }

    public void setExpectSalaryType(Integer expectSalaryType) {
        this.expectSalaryType = expectSalaryType;
    }

    public String getJobMotivation() {
        return StringUtils.replaceBr(jobMotivation);
    }

    public void setJobMotivation(String jobMotivation) {
        this.jobMotivation = jobMotivation;
    }

    public String getExpectInterviewTime() {
        return StringUtils.replaceBr(expectInterviewTime);
    }

    public void setExpectInterviewTime(String expectInterviewTime) {
        this.expectInterviewTime = expectInterviewTime;
    }

    public Integer getExpectEntryTime() {
        return expectEntryTime;
    }

    public void setExpectEntryTime(Integer expectEntryTime) {
        this.expectEntryTime = expectEntryTime;
    }

    public Integer getMonthSalary() {
        return monthSalary;
    }

    public void setMonthSalary(Integer monthSalary) {
        this.monthSalary = monthSalary;
    }

    public Integer getMonthSalaryCount() {
        return monthSalaryCount;
    }

    public void setMonthSalaryCount(Integer monthSalaryCount) {
        this.monthSalaryCount = monthSalaryCount;
    }

    public Integer getNowSalary() {
        return nowSalary;
    }

    public void setNowSalary(Integer nowSalary) {
        this.nowSalary = nowSalary;
    }

    public Integer getNowSalaryType() {
        return nowSalaryType;
    }

    public void setNowSalaryType(Integer nowSalaryType) {
        this.nowSalaryType = nowSalaryType;
    }

    public String getOtherIncome() {
        return StringUtils.replaceBr(otherIncome);
    }

    public void setOtherIncome(String otherIncome) {
        this.otherIncome = otherIncome;
    }

    public Integer getDataSource() {
        return dataSource;
    }

    public void setDataSource(Integer dataSource) {
        this.dataSource = dataSource;
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

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
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

    public String getUpdateUserId() {
        return updateUserId;
    }

    public void setUpdateUserId(String updateUserId) {
        this.updateUserId = updateUserId;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Boolean getModify() {
        return modify;
    }

    public void setModify(Boolean modify) {
        this.modify = modify;
    }

    public ResumeReportView(ResumeReport report) {
        this.id = report.getId();
        this.jobAnalysis = report.getJobAnalysis();
        this.professionalAnalysis = report.getProfessionalAnalysis();
        this.remunerationAnalysis = report.getRemunerationAnalysis();
        this.jobdevelopmentAnalysis = report.getJobdevelopmentAnalysis();
        this.jobintentionAnalysis = report.getJobintentionAnalysis();
        this.characterAnalysis = report.getCharacterAnalysis();
        this.familyAnalysis = report.getFamilyAnalysis();
        this.advantageAnalysis = report.getAdvantageAnalysis();
        this.otherAnalysis = report.getOtherAnalysis();
        this.currentSalary = report.getCurrentSalary();
        this.expectSalary = report.getExpectSalary();
        this.expectSalaryType = report.getExpectSalaryType();
        this.jobMotivation = report.getJobMotivation();
        this.expectInterviewTime = report.getExpectInterviewTime();
        this.expectEntryTime = report.getExpectEntryTime();
        this.monthSalary = report.getMonthSalary();
        this.monthSalaryCount = report.getMonthSalaryCount();
        this.nowSalary = report.getNowSalary();
        this.nowSalaryType = report.getNowSalaryType();
        this.otherIncome = report.getOtherIncome();
    }

    public ResumeReportView(VersionResumeReport report) {
        this.id = report.getId();
        this.jobAnalysis = report.getJobAnalysis();
        this.professionalAnalysis = report.getProfessionalAnalysis();
        this.remunerationAnalysis = report.getRemunerationAnalysis();
        this.jobdevelopmentAnalysis = report.getJobdevelopmentAnalysis();
        this.jobintentionAnalysis = report.getJobintentionAnalysis();
        this.characterAnalysis = report.getCharacterAnalysis();
        this.familyAnalysis = report.getFamilyAnalysis();
        this.advantageAnalysis = report.getAdvantageAnalysis();
        this.otherAnalysis = report.getOtherAnalysis();
        this.currentSalary = report.getCurrentSalary();
        this.expectSalary = report.getExpectSalary();
        this.expectSalaryType = report.getExpectSalaryType();
        this.jobMotivation = report.getJobMotivation();
        this.expectInterviewTime = report.getExpectInterviewTime();
        this.expectEntryTime = report.getExpectEntryTime();
        this.monthSalary = report.getMonthSalary();
        this.monthSalaryCount = report.getMonthSalaryCount();
        this.nowSalary = report.getNowSalary();
        this.nowSalaryType = report.getNowSalaryType();
        this.otherIncome = report.getOtherIncome();
    }
}