package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;

public class TaoWorkExperienceListView implements Serializable {

    private static final long serialVersionUID = -1825517488795160250L;

    private String company;// 公司名称
    private String jobName;// 职位名称
    private String workTime;// 工作时间区间

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getWorkTime() {
        return workTime;
    }

    public void setWorkTime(String workTime) {
        this.workTime = workTime;
    }

}
