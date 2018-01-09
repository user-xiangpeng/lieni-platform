package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;

public class DownJobIntentionView implements Serializable {

    private static final long serialVersionUID = -258795791256408072L;

    private Integer id;
    private String resumeId;
    private String expectIndustryStr; // 期望行业
    private String expectPositionStr; // 期望职位
    private String expectCityStr; // 期望城市
    private String expectSalary; // 期望年薪
    private Integer salaryType; // 薪资类型 （0:年薪,1:面议）
    private String otherRequire; // 其他要求

    private String[] expectIndustry; // 期望行业
    private String[] expectPosition; // 期望职位
    private String[] expectCity; // 期望城市

    public DownJobIntentionView(JobIntentionView jobIntentionView) {
        if (null == jobIntentionView) {
            return;
        }
        this.id = jobIntentionView.getId();
        this.resumeId = jobIntentionView.getResumeId();
        this.expectIndustry = jobIntentionView.getExpectIndustry();
        this.expectPosition = jobIntentionView.getExpectPosition();
        this.expectCity = jobIntentionView.getExpectCity();
        this.expectSalary = jobIntentionView.getExpectSalary();
        this.salaryType = jobIntentionView.getSalaryType();
        this.otherRequire = jobIntentionView.getOtherRequire();
    }

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

    public String getExpectIndustryStr() {
        return expectIndustryStr;
    }

    public void setExpectIndustryStr(String expectIndustryStr) {
        this.expectIndustryStr = expectIndustryStr;
    }

    public String getExpectPositionStr() {
        return expectPositionStr;
    }

    public void setExpectPositionStr(String expectPositionStr) {
        this.expectPositionStr = expectPositionStr;
    }

    public String getExpectCityStr() {
        return expectCityStr;
    }

    public void setExpectCityStr(String expectCityStr) {
        this.expectCityStr = expectCityStr;
    }

    public String getExpectSalary() {
        return expectSalary;
    }

    public void setExpectSalary(String expectSalary) {
        this.expectSalary = expectSalary;
    }

    public Integer getSalaryType() {
        return salaryType;
    }

    public void setSalaryType(Integer salaryType) {
        this.salaryType = salaryType;
    }

    public String getOtherRequire() {
        return otherRequire;
    }

    public void setOtherRequire(String otherRequire) {
        this.otherRequire = otherRequire;
    }

    public String[] getExpectIndustry() {
        return expectIndustry;
    }

    public void setExpectIndustry(String[] expectIndustry) {
        this.expectIndustry = expectIndustry;
    }

    public String[] getExpectPosition() {
        return expectPosition;
    }

    public void setExpectPosition(String[] expectPosition) {
        this.expectPosition = expectPosition;
    }

    public String[] getExpectCity() {
        return expectCity;
    }

    public void setExpectCity(String[] expectCity) {
        this.expectCity = expectCity;
    }

}
