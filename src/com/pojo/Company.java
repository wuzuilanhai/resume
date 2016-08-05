package com.pojo;

public class Company {
    private Integer companyId;

    private String companyName;

    private String companyLoginName;

    private String companyPassword;

    private String companyLocation;

    private Integer industryId;

    private String chatterName;

    private String chatterSex;

    private String companyEmail;

    private String chatterPhone;

    private String phoneNumber;

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName == null ? null : companyName.trim();
    }

    public String getCompanyLoginName() {
        return companyLoginName;
    }

    public void setCompanyLoginName(String companyLoginName) {
        this.companyLoginName = companyLoginName == null ? null : companyLoginName.trim();
    }

    public String getCompanyPassword() {
        return companyPassword;
    }

    public void setCompanyPassword(String companyPassword) {
        this.companyPassword = companyPassword == null ? null : companyPassword.trim();
    }

    public String getCompanyLocation() {
        return companyLocation;
    }

    public void setCompanyLocation(String companyLocation) {
        this.companyLocation = companyLocation == null ? null : companyLocation.trim();
    }

    public Integer getIndustryId() {
        return industryId;
    }

    public void setIndustryId(Integer industryId) {
        this.industryId = industryId;
    }

    public String getChatterName() {
        return chatterName;
    }

    public void setChatterName(String chatterName) {
        this.chatterName = chatterName == null ? null : chatterName.trim();
    }

    public String getChatterSex() {
        return chatterSex;
    }

    public void setChatterSex(String chatterSex) {
        this.chatterSex = chatterSex == null ? null : chatterSex.trim();
    }

    public String getCompanyEmail() {
        return companyEmail;
    }

    public void setCompanyEmail(String companyEmail) {
        this.companyEmail = companyEmail == null ? null : companyEmail.trim();
    }

    public String getChatterPhone() {
        return chatterPhone;
    }

    public void setChatterPhone(String chatterPhone) {
        this.chatterPhone = chatterPhone == null ? null : chatterPhone.trim();
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber == null ? null : phoneNumber.trim();
    }
}