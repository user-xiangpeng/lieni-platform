package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;

import com.lieni.core.util.StringUtils;
import com.lieni.resume.model.CvLanguageAbility;
import com.lieni.resume.model.JobhunterLanguageAbility;
import com.lieni.resume.model.VersionCvLanguageAbility;

public class LanguageView implements Serializable {

    private static final long serialVersionUID = 7642718856160260638L;

    private Long id;
    private String resumeId;
    private Integer language;
    private Integer languageProficiency;
    private Integer languageLevel;
    private String otherLanguage;

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

    public Integer getLanguage() {
        return language;
    }

    public void setLanguage(Integer language) {
        this.language = language;
    }

    public Integer getLanguageProficiency() {
        return languageProficiency;
    }

    public void setLanguageProficiency(Integer languageProficiency) {
        this.languageProficiency = languageProficiency;
    }

    public Integer getLanguageLevel() {
        return languageLevel;
    }

    public void setLanguageLevel(Integer languageLevel) {
        this.languageLevel = languageLevel;
    }

    public String getOtherLanguage() {
        return StringUtils.replaceBr(otherLanguage);
    }

    public void setOtherLanguage(String otherLanguage) {
        this.otherLanguage = otherLanguage;
    }

    public LanguageView(CvLanguageAbility t) {
        super();
        this.id = t.getId();
        this.resumeId = t.getResumeId();
        this.language = t.getLanguage();
        this.languageProficiency = t.getLanguageProficiency();
        this.languageLevel = t.getLanguageLevel();
        this.otherLanguage = t.getOtherLanguage();
    }

    public LanguageView(JobhunterLanguageAbility t) {
        super();
        this.id = t.getId();
        this.resumeId = t.getResumeId().toString();
        this.language = t.getLanguage();
        this.languageProficiency = t.getLanguageProficiency();
        this.languageLevel = t.getLanguageLevel();
        this.otherLanguage = t.getOtherLanguage();
    }

    public LanguageView() {
        super();
    }

    public LanguageView(VersionCvLanguageAbility t) {
        super();
        this.resumeId = t.getResumeId();
        this.language = t.getLanguage();
        this.languageProficiency = t.getLanguageProficiency();
        this.languageLevel = t.getLanguageLevel();
        this.otherLanguage = t.getOtherLanguage();
    }

}
