package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;
import java.util.Date;

public class ResumeAppealView implements Serializable {

    /**
     */
    private static final long serialVersionUID = 8929018858360940269L;

    private Long id;

    private String appealCustomer;

    private String candidateName;

    private String contactPerson;

    private String contactPhone;

    private Date createTime;

    private Integer type;

    private Integer status;

    private String reason;

    private String resumeId;

    public String getResumeId() {
        return resumeId;
    }

    public void setResumeId(String resumeId) {
        this.resumeId = resumeId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCandidateName() {
        return candidateName;
    }

    public void setCandidateName(String candidateName) {
        this.candidateName = candidateName;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getAppealCustomer() {
        return appealCustomer;
    }

    public void setAppealCustomer(String appealCustomer) {
        this.appealCustomer = appealCustomer;
    }

    public String getContactPerson() {
        return contactPerson;
    }

    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

}
