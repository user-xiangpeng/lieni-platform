package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;
import java.util.List;

public class BackgroungSurveyView implements Serializable {

    private static final long serialVersionUID = -8200771536360696058L;

    private List<ResumeWorkBackgroundView> workBackgrounds; // 工作经历背调
    private List<ResumeEducationBackgroundView> educationBackgrounds; // 教育经历背调

    public List<ResumeWorkBackgroundView> getWorkBackgrounds() {
        return workBackgrounds;
    }

    public void setWorkBackgrounds(List<ResumeWorkBackgroundView> workBackgrounds) {
        this.workBackgrounds = workBackgrounds;
    }

    public List<ResumeEducationBackgroundView> getEducationBackgrounds() {
        return educationBackgrounds;
    }

    public void setEducationBackgrounds(List<ResumeEducationBackgroundView> educationBackgrounds) {
        this.educationBackgrounds = educationBackgrounds;
    }

}
