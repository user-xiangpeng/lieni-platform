package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;

import com.lieni.candidate.model.CandidateProduct;
import com.lieni.resume.model.CvProduct;
import com.lieni.resume.model.JobhunterResumeProduct;
import com.lieni.resume.model.TalentProduct;
import com.lieni.resume.model.VersionCvProduct;

public class ProductView implements Serializable {

    private static final long serialVersionUID = 4045380447593424004L;

    private Long id;
    private String resumeId;
    private String productName;
    private String productLink;
    private String productExplain;
    private Integer productType;

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

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductLink() {
        return productLink;
    }

    public void setProductLink(String productLink) {
        this.productLink = productLink;
    }

    public String getProductExplain() {
        return productExplain;
    }

    public void setProductExplain(String productExplain) {
        this.productExplain = productExplain;
    }

    public Integer getProductType() {
        return productType;
    }

    public void setProductType(Integer productType) {
        this.productType = productType;
    }

    public ProductView(CvProduct t) {
        super();
        this.id = t.getId();
        this.resumeId = t.getResumeId();
        this.productName = t.getProductName();
        this.productLink = t.getProductLink();
        this.productExplain = t.getProductExplain();
        this.productType = t.getProductType();
    }

    public ProductView(CandidateProduct t) {
        super();
        this.id = t.getId();
        this.resumeId = t.getCandidateId();
        this.productName = t.getProductName();
        this.productLink = t.getProductLink();
        this.productExplain = t.getProductExplain();
        this.productType = t.getProductType();
    }

    public ProductView(TalentProduct t) {
        super();
        this.id = t.getId();
        this.resumeId = t.getTalentId();
        this.productName = t.getProductName();
        this.productLink = t.getProductLink();
        this.productExplain = t.getProductExplain();
        this.productType = t.getProductType();
    }

    public ProductView(JobhunterResumeProduct t) {
        super();
        this.id = t.getId();
        this.resumeId = t.getResumeId().toString();
        this.productName = t.getProductName();
        this.productLink = t.getProductLink();
        this.productExplain = t.getProductExplain();
        this.productType = t.getProductType();
    }

    public ProductView() {
        super();
    }

    public ProductView(VersionCvProduct t) {
        super();
        this.id = t.getId();
        this.resumeId = t.getResumeId().toString();
        this.productName = t.getProductName();
        this.productLink = t.getProductLink();
        this.productExplain = t.getProductExplain();
        this.productType = t.getProductType();
    }

}
