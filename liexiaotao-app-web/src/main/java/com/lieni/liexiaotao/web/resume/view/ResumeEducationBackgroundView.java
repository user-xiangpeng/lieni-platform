package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;

import org.springframework.beans.BeanUtils;

import com.lieni.resume.model.ResumeEducationBackground;
import com.lieni.resume.model.VersionResumeEducationBackground;

public class ResumeEducationBackgroundView implements Serializable {

    /**
     */
    private static final long serialVersionUID = 4432447622023810675L;

    private Long id;

    private Long backgroundSurveyId;

    private Integer startYear;

    private Integer startMonth;

    private Integer endYear;

    private Integer endMonth;

    private String graduationSchool;

    private String professional;

    private Integer degree;

    private String degreeName;

    private String degreeCode;

    private Integer realed;

    private String degreeIcon;

    public ResumeEducationBackgroundView() {
        // TODO Auto-generated constructor stub
    }

    public ResumeEducationBackgroundView(Integer startYear, Integer startMonth, Integer endYear, Integer endMonth,
            Integer degree, String graduationSchool, String professional) {
        this.startYear = startYear;
        this.startMonth = startMonth;
        this.endYear = endYear;
        this.endMonth = endMonth;
        this.degree = degree;
        this.graduationSchool = graduationSchool;
        this.professional = professional;
    }

    public ResumeEducationBackgroundView(ResumeEducationBackground resumeEducationBackground) {
        BeanUtils.copyProperties(resumeEducationBackground, this);
    }

    public ResumeEducationBackgroundView(VersionResumeEducationBackground versionResumeEducationBackground) {
        BeanUtils.copyProperties(versionResumeEducationBackground, this);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getBackgroundSurveyId() {
        return backgroundSurveyId;
    }

    public void setBackgroundSurveyId(Long backgroundSurveyId) {
        this.backgroundSurveyId = backgroundSurveyId;
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

    public String getGraduationSchool() {
        return graduationSchool;
    }

    public void setGraduationSchool(String graduationSchool) {
        this.graduationSchool = graduationSchool;
    }

    public String getProfessional() {
        return professional;
    }

    public void setProfessional(String professional) {
        this.professional = professional;
    }

    public Integer getDegree() {
        return degree;
    }

    public void setDegree(Integer degree) {
        this.degree = degree;
    }

    public String getDegreeName() {
        return degreeName;
    }

    public void setDegreeName(String degreeName) {
        this.degreeName = degreeName;
    }

    public String getDegreeCode() {
        return degreeCode;
    }

    public void setDegreeCode(String degreeCode) {
        this.degreeCode = degreeCode;
    }

    public Integer getRealed() {
        return realed;
    }

    public void setRealed(Integer realed) {
        this.realed = realed;
    }

    public String getDegreeIcon() {
        return degreeIcon;
    }

    public void setDegreeIcon(String degreeIcon) {
        this.degreeIcon = degreeIcon;
    }

}