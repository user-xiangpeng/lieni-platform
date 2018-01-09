package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;
import java.util.Date;

import com.lieni.core.util.StringUtils;
import com.lieni.resume.model.CvResumeInfo;
import com.lieni.resume.model.VersionCvResumeInfo;

public class ResumeInfoView implements Serializable {

    private static final long serialVersionUID = 3927773835596525956L;

    private String resumeId;
    private String name;
    private Integer birthYear;
    private Integer gender;
    private Long workProvince;
    private Long workCity;
    private Long workDistrict;
    private String phone;
    private String email;
    private Integer workYears;
    private Integer highestDegree;
    private String currentPosition;
    private String currentCompany;
    private Integer workState;
    private Integer maritalStatus;
    private Long hometownProvince;
    private Long hometownCity;
    private String hometownAddress;
    private String headUrl;
    private Integer currentSalary;
    private Integer salaryType;
    private String otherSalary;
    private String resume;
    private Date updateTime;
    private Boolean collected; // 是否收藏
    private Boolean bought; // 是否购买
    private Long purchaseId; // 购买记录id
    private Boolean appealed; // 是否申诉
    private Integer appealResult; // 申诉结果

    public Integer getAppealResult() {
        return appealResult;
    }

    public void setAppealResult(Integer appealResult) {
        this.appealResult = appealResult;
    }

    public Long getPurchaseId() {
        return purchaseId;
    }

    public void setPurchaseId(Long purchaseId) {
        this.purchaseId = purchaseId;
    }

    public Boolean getAppealed() {
        return appealed;
    }

    public void setAppealed(Boolean appealed) {
        this.appealed = appealed;
    }

    public Boolean getCollected() {
        return collected;
    }

    public void setCollected(Boolean collected) {
        this.collected = collected;
    }

    public Boolean getBought() {
        return bought;
    }

    public void setBought(Boolean bought) {
        this.bought = bought;
    }

    public String getResumeId() {
        return resumeId;
    }

    public void setResumeId(String resumeId) {
        this.resumeId = resumeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getHighestDegree() {
        return highestDegree;
    }

    public void setHighestDegree(Integer highestDegree) {
        this.highestDegree = highestDegree;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public Integer getWorkYears() {
        return workYears;
    }

    public void setWorkYears(Integer workYears) {
        this.workYears = workYears;
    }

    public Integer getBirthYear() {
        return birthYear;
    }

    public void setBirthYear(Integer birthYear) {
        this.birthYear = birthYear;
    }

    public Integer getWorkState() {
        return workState;
    }

    public void setWorkState(Integer workState) {
        this.workState = workState;
    }

    public Long getWorkCity() {
        return workCity;
    }

    public void setWorkCity(Long workCity) {
        this.workCity = workCity;
    }

    public Integer getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(Integer maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public Integer getCurrentSalary() {
        return currentSalary;
    }

    public void setCurrentSalary(Integer currentSalary) {
        this.currentSalary = currentSalary;
    }

    public Integer getSalaryType() {
        return salaryType;
    }

    public void setSalaryType(Integer salaryType) {
        this.salaryType = salaryType;
    }

    public String getOtherSalary() {
        return otherSalary;
    }

    public void setOtherSalary(String otherSalary) {
        this.otherSalary = otherSalary;
    }

    public Long getHometownProvince() {
        return hometownProvince;
    }

    public void setHometownProvince(Long hometownProvince) {
        this.hometownProvince = hometownProvince;
    }

    public Long getHometownCity() {
        return hometownCity;
    }

    public void setHometownCity(Long hometownCity) {
        this.hometownCity = hometownCity;
    }

    public String getCurrentCompany() {
        return currentCompany;
    }

    public void setCurrentCompany(String currentCompany) {
        this.currentCompany = currentCompany;
    }

    public String getCurrentPosition() {
        return currentPosition;
    }

    public void setCurrentPosition(String currentPosition) {
        this.currentPosition = currentPosition;
    }

    public Long getWorkProvince() {
        return workProvince;
    }

    public void setWorkProvince(Long workProvince) {
        this.workProvince = workProvince;
    }

    public Long getWorkDistrict() {
        return workDistrict;
    }

    public void setWorkDistrict(Long workDistrict) {
        this.workDistrict = workDistrict;
    }

    public String getHometownAddress() {
        return hometownAddress;
    }

    public void setHometownAddress(String hometownAddress) {
        this.hometownAddress = hometownAddress;
    }

    public String getHeadUrl() {
        return headUrl;
    }

    public void setHeadUrl(String headUrl) {
        this.headUrl = headUrl;
    }

    public String getResume() {
        return StringUtils.replaceBr(resume);
    }

    public void setResume(String resume) {
        this.resume = resume;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public ResumeInfoView(CvResumeInfo t) {
        super();
        this.resumeId = t.getId();
        this.name = t.getName();
        this.phone = t.getPhone();
        this.email = t.getEmail();
        // this.sourceCode = t.getSourceCode();
        this.highestDegree = t.getHighestDegree();
        this.gender = t.getGender();
        this.workYears = t.getWorkYears();
        this.birthYear = t.getBirthYear();
        this.workState = t.getWorkState();
        this.workCity = t.getWorkCity();
        this.maritalStatus = t.getMaritalStatus();
        this.currentSalary = t.getCurrentSalary();
        this.salaryType = t.getSalaryType();
        this.otherSalary = t.getOtherSalary();
        this.hometownProvince = t.getHometownProvince();
        this.hometownCity = t.getHometownCity();
        // this.dataSource = t.getDataSource();
        this.currentCompany = t.getCurrentCompany();
        this.currentPosition = t.getCurrentPosition();
        this.workProvince = t.getWorkProvince();
        this.workDistrict = t.getWorkDistrict();
        this.hometownAddress = t.getHometownAddress();
        // this.createTime = t.getCreateDttm();
        this.updateTime = t.getUpdateDttm();
        this.resume = t.getResume();
        this.headUrl = t.getHeadUrl();
    }

    public ResumeInfoView() {
        super();
    }

    public ResumeInfoView(VersionCvResumeInfo t) {
        super();
        this.resumeId = t.getResumeId();
        this.name = t.getName();
        this.phone = t.getPhone();
        this.email = t.getEmail();
        // this.sourceCode = t.getSourceCode();
        this.highestDegree = t.getHighestDegree();
        this.gender = t.getGender();
        this.workYears = t.getWorkYears();
        this.birthYear = t.getBirthYear();
        this.workState = t.getWorkState();
        this.workCity = t.getWorkCity();
        this.maritalStatus = t.getMaritalStatus();
        this.currentSalary = t.getCurrentSalary();
        this.salaryType = t.getSalaryType();
        this.otherSalary = t.getOtherSalary();
        this.hometownProvince = t.getHometownProvince();
        this.hometownCity = t.getHometownCity();
        // this.dataSource = t.getDataSource();
        this.currentCompany = t.getCurrentCompany();
        this.currentPosition = t.getCurrentPosition();
        this.workProvince = t.getWorkProvince();
        this.workDistrict = t.getWorkDistrict();
        this.hometownAddress = t.getHometownAddress();
        // this.createTime = t.getCreateDttm();
        this.updateTime = t.getUpdateDttm();
        this.resume = t.getResume();
        this.headUrl = t.getHeadUrl();
    }

}
