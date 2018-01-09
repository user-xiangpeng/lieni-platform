package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;

import org.apache.commons.lang3.StringUtils;

import com.lieni.core.util.JsonUtil;
import com.lieni.resume.cv.dto.ReqCvJobIntentionDto;
import com.lieni.resume.model.CvJobIntention;
import com.lieni.resume.model.JobhunterJobIntention;
import com.lieni.resume.model.VersionCvJobIntention;
import com.lieni.resume.talent.dto.ReqTalentJobIntentionDto;

public class JobIntentionView implements Serializable {

    private static final long serialVersionUID = 8344096064558765080L;

    private Integer id;
    private String resumeId;
    private String[] expectIndustry; // 期望行业
    private String[] expectPosition; // 期望职位
    private String[] expectCity; // 期望城市
    private String expectSalary; // 期望年薪
    private Integer salaryType; // 薪资类型 （0:年薪,1:面议）
    private String otherRequire; // 其他要求

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

    public String[] getExpectIndustry() {
        return expectIndustry;
    }

    public void setExpectIndustry(String expectIndustry) {
        if (StringUtils.isNotBlank(expectIndustry)) {
            this.expectIndustry = JsonUtil.toObject(expectIndustry, String[].class);
        }
    }

    public String[] getExpectPosition() {
        return expectPosition;
    }

    public void setExpectPosition(String expectPosition) {
        if (StringUtils.isNotBlank(expectPosition)) {
            this.expectPosition = JsonUtil.toObject(expectPosition, String[].class);
        }
    }

    public String[] getExpectCity() {
        return expectCity;
    }

    public void setExpectCity(String expectCity) {
        if (StringUtils.isNotBlank(expectCity)) {
            this.expectCity = JsonUtil.toObject(expectCity, String[].class);
        }
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

    public JobIntentionView() {
        super();
    }

    public JobIntentionView(CvJobIntention t) {
        super();
        this.id = t.getId();
        this.resumeId = t.getResumeId();
        if (StringUtils.isNotBlank(t.getExpectIndustry())) {
            String industrys = t.getExpectIndustry();
            industrys = industrys.replaceAll(com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON,
                    com.lieni.core.util.StringUtils.ENGLISH_COMMA);
            String[] industryList = industrys.split(com.lieni.core.util.StringUtils.ENGLISH_COMMA);
            this.expectIndustry = industryList;
        }
        if (StringUtils.isNotBlank(t.getExpectCity())) {
            String citys = t.getExpectCity();
            citys = citys.replaceAll(com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON,
                    com.lieni.core.util.StringUtils.ENGLISH_COMMA);
            String[] cityList = citys.split(com.lieni.core.util.StringUtils.ENGLISH_COMMA);
            this.expectCity = cityList;
        }
        if (StringUtils.isNotBlank(t.getExpectPosition())) {
            String positions = t.getExpectPosition();
            positions = positions.replaceAll(com.lieni.core.util.StringUtils.CHINESE_COMMA,
                    com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON);
            positions = positions.replaceAll(com.lieni.core.util.StringUtils.CHINESE_SEMICOLON,
                    com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON);
            positions = positions.replaceAll(com.lieni.core.util.StringUtils.ENGLISH_COMMA,
                    com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON);
            positions = positions.replace(String.valueOf(com.lieni.core.util.StringUtils.TEXT_SEPARATOR_CHAR),
                    com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON);
            String[] positionList = positions.split(String.valueOf(com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON));
            this.expectPosition = positionList;
        }
        this.expectSalary = t.getExpectSalary();
        this.salaryType = t.getSalaryType();
        this.otherRequire = t.getOtherRequire();
    }

    public ReqCvJobIntentionDto forwardConvertCvDto() {
        ReqCvJobIntentionDto dto = new ReqCvJobIntentionDto();
        dto.setExpectCity(StringUtils.join(this.getExpectCity(), com.lieni.core.util.StringUtils.ENGLISH_COMMA));
        dto.setExpectIndustry(
                StringUtils.join(this.getExpectIndustry(), com.lieni.core.util.StringUtils.ENGLISH_COMMA));
        dto.setExpectPosition(
                StringUtils.join(this.getExpectPosition(), com.lieni.core.util.StringUtils.TEXT_SEPARATOR_CHAR));
        dto.setExpectSalary(expectSalary);
        dto.setSalaryType(salaryType);
        dto.setOtherRequire(otherRequire);
        return dto;
    }

    public ReqTalentJobIntentionDto forwardConvertTalentDto() {
        ReqTalentJobIntentionDto dto = new ReqTalentJobIntentionDto();
        dto.setExpectCity(StringUtils.join(this.getExpectCity(), com.lieni.core.util.StringUtils.ENGLISH_COMMA));
        dto.setExpectIndustry(
                StringUtils.join(this.getExpectIndustry(), com.lieni.core.util.StringUtils.ENGLISH_COMMA));
        dto.setExpectPosition(
                StringUtils.join(this.getExpectPosition(), com.lieni.core.util.StringUtils.TEXT_SEPARATOR_CHAR));
        dto.setExpectSalary(expectSalary);
        dto.setSalaryType(salaryType);
        dto.setOtherRequire(otherRequire);
        return dto;
    }

    public JobIntentionView(JobhunterJobIntention t) {
        super();
        this.id = t.getId().intValue();
        this.resumeId = t.getResumeId().toString();
        if (StringUtils.isNotBlank(t.getExpectIndustry())) {
            String industrys = t.getExpectIndustry();
            industrys = industrys.replaceAll(com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON,
                    com.lieni.core.util.StringUtils.ENGLISH_COMMA);
            String[] industryList = industrys.split(com.lieni.core.util.StringUtils.ENGLISH_COMMA);
            this.expectIndustry = industryList;
        }
        if (StringUtils.isNotBlank(t.getExpectCity())) {
            String citys = t.getExpectCity();
            citys = citys.replaceAll(com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON,
                    com.lieni.core.util.StringUtils.ENGLISH_COMMA);
            String[] cityList = citys.split(com.lieni.core.util.StringUtils.ENGLISH_COMMA);
            this.expectCity = cityList;
        }
        if (StringUtils.isNotBlank(t.getExpectPosition())) {
            String positions = t.getExpectPosition();
            positions = positions.replaceAll(com.lieni.core.util.StringUtils.CHINESE_COMMA,
                    com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON);
            positions = positions.replaceAll(com.lieni.core.util.StringUtils.CHINESE_SEMICOLON,
                    com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON);
            positions = positions.replaceAll(com.lieni.core.util.StringUtils.ENGLISH_COMMA,
                    com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON);
            positions = positions.replace(String.valueOf(com.lieni.core.util.StringUtils.TEXT_SEPARATOR_CHAR),
                    com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON);
            String[] positionList = positions.split(String.valueOf(com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON));
            this.expectPosition = positionList;
        }
        this.expectSalary = t.getExpectSalary();
        this.salaryType = t.getSalaryType();
        this.otherRequire = t.getOtherRequire();
    }

    public JobIntentionView(VersionCvJobIntention t) {
        super();
        this.resumeId = t.getResumeId();
        if (StringUtils.isNotBlank(t.getExpectIndustry())) {
            String industrys = t.getExpectIndustry();
            industrys = industrys.replaceAll(com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON,
                    com.lieni.core.util.StringUtils.ENGLISH_COMMA);
            String[] industryList = industrys.split(com.lieni.core.util.StringUtils.ENGLISH_COMMA);
            this.expectIndustry = industryList;
        }
        if (StringUtils.isNotBlank(t.getExpectCity())) {
            String citys = t.getExpectCity();
            citys = citys.replaceAll(com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON,
                    com.lieni.core.util.StringUtils.ENGLISH_COMMA);
            String[] cityList = citys.split(com.lieni.core.util.StringUtils.ENGLISH_COMMA);
            this.expectCity = cityList;
        }
        if (StringUtils.isNotBlank(t.getExpectPosition())) {
            String positions = t.getExpectPosition();
            positions = positions.replaceAll(com.lieni.core.util.StringUtils.CHINESE_COMMA,
                    com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON);
            positions = positions.replaceAll(com.lieni.core.util.StringUtils.CHINESE_SEMICOLON,
                    com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON);
            positions = positions.replaceAll(com.lieni.core.util.StringUtils.ENGLISH_COMMA,
                    com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON);
            positions = positions.replace(String.valueOf(com.lieni.core.util.StringUtils.TEXT_SEPARATOR_CHAR),
                    com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON);
            String[] positionList = positions.split(String.valueOf(com.lieni.core.util.StringUtils.ENGLISH_SEMICOLON));
            this.expectPosition = positionList;
        }
        this.expectSalary = t.getExpectSalary();
        this.salaryType = t.getSalaryType();
        this.otherRequire = t.getOtherRequire();
    }
}
