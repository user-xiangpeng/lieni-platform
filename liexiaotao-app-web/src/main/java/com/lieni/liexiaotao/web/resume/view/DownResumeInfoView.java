package com.lieni.liexiaotao.web.resume.view;

public class DownResumeInfoView {

    private String name;
    private Integer birthYear;
    private Integer age;
    private Integer gender;
    private String genderStr;
    private Long workProvince;
    private Long workCity;
    private Long workDistrict;
    private String workAddress;
    private String phone;
    private String email;
    private Integer workYears;
    private Integer degree;
    private String currentPosition;
    private String currentCompany;
    private Integer workState;
    private String workStateStr;
    private Integer maritalStatus;
    private Long hometownProvince;
    private Long hometownCity;
    private String hometownAddress;
    private String headUrl;
    private Integer currentSalary;
    private String currentSalaryStr;
    private Integer salaryType;
    private String salaryTypeStr;
    private String otherSalary;
    private String resume;

    public DownResumeInfoView(ResumeInfoView resumeInfoView) {
        super();
        // 已购买的简历才显示联系方式
        this.name = resumeInfoView.getName();
        this.phone = resumeInfoView.getPhone();
        this.email = resumeInfoView.getEmail();
        this.degree = resumeInfoView.getHighestDegree();
        this.gender = resumeInfoView.getGender();
        this.workYears = resumeInfoView.getWorkYears();
        this.birthYear = resumeInfoView.getBirthYear();
        this.workState = resumeInfoView.getWorkState();
        this.workCity = resumeInfoView.getWorkCity();
        this.maritalStatus = resumeInfoView.getMaritalStatus();
        this.currentSalary = resumeInfoView.getCurrentSalary();
        this.salaryType = resumeInfoView.getSalaryType();
        this.otherSalary = resumeInfoView.getOtherSalary();
        this.hometownProvince = resumeInfoView.getHometownProvince();
        this.hometownCity = resumeInfoView.getHometownCity();
        // this.dataSource = t.getDataSource();
        this.currentCompany = resumeInfoView.getCurrentCompany();
        this.currentPosition = resumeInfoView.getCurrentPosition();
        this.workProvince = resumeInfoView.getWorkProvince();
        this.workDistrict = resumeInfoView.getWorkDistrict();
        this.hometownAddress = resumeInfoView.getHometownAddress();
        this.resume = resumeInfoView.getResume();
        // this.createTime = t.getCreateDttm();
        this.headUrl = resumeInfoView.getHeadUrl();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getBirthYear() {
        return birthYear;
    }

    public void setBirthYear(Integer birthYear) {
        this.birthYear = birthYear;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public String getGenderStr() {
        return genderStr;
    }

    public void setGenderStr(String genderStr) {
        this.genderStr = genderStr;
    }

    public Long getWorkProvince() {
        return workProvince;
    }

    public void setWorkProvince(Long workProvince) {
        this.workProvince = workProvince;
    }

    public Long getWorkCity() {
        return workCity;
    }

    public void setWorkCity(Long workCity) {
        this.workCity = workCity;
    }

    public Long getWorkDistrict() {
        return workDistrict;
    }

    public void setWorkDistrict(Long workDistrict) {
        this.workDistrict = workDistrict;
    }

    public String getWorkAddress() {
        return workAddress;
    }

    public void setWorkAddress(String workAddress) {
        this.workAddress = workAddress;
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

    public Integer getWorkYears() {
        return workYears;
    }

    public void setWorkYears(Integer workYears) {
        this.workYears = workYears;
    }

    public Integer getDegree() {
        return degree;
    }

    public void setDegree(Integer degree) {
        this.degree = degree;
    }

    public String getCurrentPosition() {
        return currentPosition;
    }

    public void setCurrentPosition(String currentPosition) {
        this.currentPosition = currentPosition;
    }

    public String getCurrentCompany() {
        return currentCompany;
    }

    public void setCurrentCompany(String currentCompany) {
        this.currentCompany = currentCompany;
    }

    public Integer getWorkState() {
        return workState;
    }

    public void setWorkState(Integer workState) {
        this.workState = workState;
    }

    public String getWorkStateStr() {
        return workStateStr;
    }

    public void setWorkStateStr(String workStateStr) {
        this.workStateStr = workStateStr;
    }

    public Integer getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(Integer maritalStatus) {
        this.maritalStatus = maritalStatus;
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

    public String getSalaryTypeStr() {
        return salaryTypeStr;
    }

    public void setSalaryTypeStr(String salaryTypeStr) {
        this.salaryTypeStr = salaryTypeStr;
    }

    public String getOtherSalary() {
        return otherSalary;
    }

    public void setOtherSalary(String otherSalary) {
        this.otherSalary = otherSalary;
    }

    public String getCurrentSalaryStr() {
        return currentSalaryStr;
    }

    public void setCurrentSalaryStr(String currentSalaryStr) {
        this.currentSalaryStr = currentSalaryStr;
    }

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }

}
