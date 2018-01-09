package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;

import com.lieni.core.util.StringUtils;
import com.lieni.resume.cv.dto.ReqCvWorkExperienceDto;
import com.lieni.resume.model.CvWorkExperience;
import com.lieni.resume.model.JobhunterWorkExperience;
import com.lieni.resume.model.VersionCvWorkExperience;

public class WorkExperienceView implements Serializable {

    private static final long serialVersionUID = -4406313602944242692L;

    private Integer id;
    private String resumeId;
    private Integer startYear;// 开始年份
    private Integer startMonth;// 开始月份
    private Integer endYear; // 结束年份
    private Integer endMonth; // 结束月份
    private String companyName; // 公司名称
    private String jobName; // 职位
    private String workContent; // 工作内容 dutyPerformance
    private String workAchievement; // 工作业绩 workGrade
    // 选填
    private String reportPeople;// 汇报对象
    private Integer underPeople; // 下属人数
    private String department;// 所在部门
    private String dimissionReason;// 离职理由
    private String companyIntroduce;// 公司简介

    private Integer resumeWorkId;
    private String companyIndustry;
    private String functions;
    private Integer scale; // 公司规模

    private String startTime;// 开始时间
    private String endTime;// 结束时间
    private String spendTime;// 花费时间

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getResumeId() {
        return resumeId;
    }

    public void setResumeId(String resumeId) {
        this.resumeId = resumeId;
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

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getWorkContent() {
        return StringUtils.replaceBr(workContent);
    }

    public void setWorkContent(String workContent) {
        this.workContent = workContent;
    }

    public String getWorkAchievement() {
        return StringUtils.replaceBr(workAchievement);
    }

    public void setWorkAchievement(String workAchievement) {
        this.workAchievement = workAchievement;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getReportPeople() {
        return reportPeople;
    }

    public void setReportPeople(String reportPeople) {
        this.reportPeople = reportPeople;
    }

    public Integer getUnderPeople() {
        return underPeople;
    }

    public void setUnderPeople(Integer underPeople) {
        this.underPeople = underPeople;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getDimissionReason() {
        return StringUtils.replaceBr(dimissionReason);
    }

    public void setDimissionReason(String dimissionReason) {
        this.dimissionReason = dimissionReason;
    }

    public String getCompanyIntroduce() {
        return StringUtils.replaceBr(companyIntroduce);
    }

    public void setCompanyIntroduce(String companyIntroduce) {
        this.companyIntroduce = companyIntroduce;
    }

    public String getCompanyIndustry() {
        return companyIndustry;
    }

    public void setCompanyIndustry(String companyIndustry) {
        this.companyIndustry = companyIndustry;
    }

    public String getFunctions() {
        return functions;
    }

    public void setFunctions(String functions) {
        this.functions = functions;
    }

    public Integer getResumeWorkId() {
        return resumeWorkId;
    }

    public void setResumeWorkId(Integer resumeWorkId) {
        this.resumeWorkId = resumeWorkId;
    }

    public WorkExperienceView() {
        super();
    }

    public Integer getScale() {
        return scale;
    }

    public void setScale(Integer scale) {
        this.scale = scale;
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

    public WorkExperienceView(CvWorkExperience t) {
        super();
        this.id = t.getId();
        this.resumeId = t.getResumeId();
        this.startYear = t.getStartYear();
        this.startMonth = t.getStartMonth();
        this.endYear = t.getEndYear();
        this.endMonth = t.getEndMonth();
        this.companyName = t.getCompany();
        this.jobName = t.getJobName();
        this.workContent = t.getDutyPerformance();
        this.workAchievement = t.getWorkGrade();
        this.reportPeople = t.getReportPeople();
        this.underPeople = t.getUnderPeople();
        this.department = t.getDepartment();
        this.dimissionReason = t.getDimissionReason();
        this.companyIntroduce = t.getCompanyIntroduce();
        this.companyIndustry = t.getCompanyIndustry();
        this.scale = t.getScale();
    }

    public WorkExperienceView(JobhunterWorkExperience t) {
        super();
        this.id = t.getId().intValue();
        this.resumeId = t.getResumeId().toString();
        this.startYear = t.getStartYear();
        this.startMonth = t.getStartMonth();
        this.endYear = t.getEndYear();
        this.endMonth = t.getEndMonth();
        this.companyName = t.getCompany();
        this.jobName = t.getJobName();
        this.workContent = t.getDutyPerformance();
        this.workAchievement = t.getWorkGrade();
        // this.reportPeople = t.getReportPeople();
        this.underPeople = t.getUnderPeople();
        this.department = t.getDepartment();
        // this.dimissionReason = t.getDimissionReason();
        // this.companyIntroduce = t.getCompanyIntroduce();
    }

    public WorkExperienceView(VersionCvWorkExperience t) {
        super();
        this.resumeId = t.getResumeId();
        this.startYear = t.getStartYear();
        this.startMonth = t.getStartMonth();
        this.endYear = t.getEndYear();
        this.endMonth = t.getEndMonth();
        this.companyName = t.getCompany();
        this.jobName = t.getJobName();
        this.workContent = t.getDutyPerformance();
        this.workAchievement = t.getWorkGrade();
        this.reportPeople = t.getReportPeople();
        this.underPeople = t.getUnderPeople();
        this.department = t.getDepartment();
        this.dimissionReason = t.getDimissionReason();
        this.companyIntroduce = t.getCompanyIntroduce();
        this.companyIndustry = t.getCompanyIndustry();
        this.scale = t.getScale();
    }

    public ReqCvWorkExperienceDto forwardConvertDto() {
        ReqCvWorkExperienceDto dto = new ReqCvWorkExperienceDto();
        dto.setStartMonth(startMonth);
        dto.setStartYear(startYear);
        dto.setEndMonth(endMonth);
        dto.setEndYear(endYear);
        dto.setCompanyName(companyName);
        dto.setJobName(jobName);
        dto.setWorkContent(workContent);
        dto.setWorkAchievement(workAchievement);
        dto.setReportPeople(reportPeople);
        dto.setUnderPeople(underPeople);
        dto.setDepartment(department);
        dto.setDimissionReason(dimissionReason);
        dto.setCompanyIntroduce(companyIntroduce);
        return dto;
    }
}
