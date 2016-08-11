package com.pojo;

public class CareerIntention {
    private Integer cintentionId;

    private Integer industryId;

    private Integer positionId;

    private String expectWorksite;

    private Double expectSalary;

    private Double currentSalary;

    private Integer isDiscuss;

    private Integer isShow;

    public Integer getCintentionId() {
        return cintentionId;
    }

    public void setCintentionId(Integer cintentionId) {
        this.cintentionId = cintentionId;
    }

    public Integer getIndustryId() {
        return industryId;
    }

    public void setIndustryId(Integer industryId) {
        this.industryId = industryId;
    }

    public Integer getPositionId() {
        return positionId;
    }

    public void setPositionId(Integer positionId) {
        this.positionId = positionId;
    }

    public String getExpectWorksite() {
        return expectWorksite;
    }

    public void setExpectWorksite(String expectWorksite) {
        this.expectWorksite = expectWorksite == null ? null : expectWorksite.trim();
    }

    public Double getExpectSalary() {
        return expectSalary;
    }

    public void setExpectSalary(Double expectSalary) {
        this.expectSalary = expectSalary;
    }

    public Double getCurrentSalary() {
        return currentSalary;
    }

    public void setCurrentSalary(Double currentSalary) {
        this.currentSalary = currentSalary;
    }

    public Integer getIsDiscuss() {
        return isDiscuss;
    }

    public void setIsDiscuss(Integer isDiscuss) {
        this.isDiscuss = isDiscuss;
    }

    public Integer getIsShow() {
        return isShow;
    }

    public void setIsShow(Integer isShow) {
        this.isShow = isShow;
    }
}