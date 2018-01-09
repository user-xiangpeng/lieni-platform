package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;

import com.lieni.resume.model.CvEducationExperience;
import com.lieni.resume.model.JobhunterEducationExperience;
import com.lieni.resume.model.VersionCvEducationExperience;

public class EducationExperienceView implements Serializable {

    private static final long serialVersionUID = -9122432209121160650L;

    private Integer id;
    private String resumeId;
    private Integer startYear;
    private Integer startMonth;
    private Integer endYear;
    private Integer endMonth;
    private String graduationSchool;
    private String professional;
    private Integer degree;
    private Boolean nationalUnified;// 是否统招
    private Boolean collegeToUniversity; // 是否专升本

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

    public Boolean getNationalUnified() {
        return nationalUnified;
    }

    public void setNationalUnified(Boolean nationalUnified) {
        this.nationalUnified = nationalUnified;
    }

    public Boolean getCollegeToUniversity() {
        return collegeToUniversity;
    }

    public void setCollegeToUniversity(Boolean collegeToUniversity) {
        this.collegeToUniversity = collegeToUniversity;
    }

    public EducationExperienceView() {
        super();
    }

    public EducationExperienceView(CvEducationExperience t) {
        super();
        this.id = t.getId();
        this.resumeId = t.getResumeId();
        this.startYear = t.getStartYear();
        this.startMonth = t.getStartMonth();
        this.endYear = t.getEndYear();
        this.endMonth = t.getEndMonth();
        this.graduationSchool = t.getGraduationSchool();
        this.professional = t.getProfessional();
        this.degree = t.getDegree();
        this.nationalUnified = t.getNationalUnified();
        this.collegeToUniversity = t.getCollegeToUniversity();
    }

    public EducationExperienceView(JobhunterEducationExperience t) {
        super();
        this.id = t.getId().intValue();
        this.resumeId = t.getResumeId().toString();
        this.startYear = t.getStartYear();
        this.startMonth = t.getStartMonth();
        this.endYear = t.getEndYear();
        this.endMonth = t.getEndMonth();
        this.graduationSchool = t.getGraduationSchool();
        this.professional = t.getProfessional();
        this.degree = t.getDegree();
        this.nationalUnified = t.getNationalUnified();
        // this.collegeToUniversity = t.getCollegeToUniversity();
    }

    public EducationExperienceView(VersionCvEducationExperience t) {
        super();
        this.resumeId = t.getResumeId();
        this.startYear = t.getStartYear();
        this.startMonth = t.getStartMonth();
        this.endYear = t.getEndYear();
        this.endMonth = t.getEndMonth();
        this.graduationSchool = t.getGraduationSchool();
        this.professional = t.getProfessional();
        this.degree = t.getDegree();
        this.nationalUnified = t.getNationalUnified();
        this.collegeToUniversity = t.getCollegeToUniversity() != null ? (t.getCollegeToUniversity() == 1 ? true : false)
                : null;
    }
}
