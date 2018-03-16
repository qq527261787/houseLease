package com.swjtu.houseLease.model;

import java.util.Date;

public class Company {
    private String companyId;
    private String companyName;
    private String companyNo;
    private Boolean flagTrashed;
    private Boolean flagDeleted;
    private Date regDate;
    private String dbName;
    private String remark;
    private String email;
    private String password;
    private String tel;
    private String qq;
    private Date expireDate;
    private String address;
    private String storeCount;
    private Boolean flagGrant;
    private String cityName;
    private String rtCount;
    private String domain;

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyNo() {
        return companyNo;
    }

    public void setCompanyNo(String companyNo) {
        this.companyNo = companyNo;
    }

    public Boolean getFlagTrashed() {
        return flagTrashed;
    }

    public void setFlagTrashed(Boolean flagTrashed) {
        this.flagTrashed = flagTrashed;
    }

    public Boolean getFlagDeleted() {
        return flagDeleted;
    }

    public void setFlagDeleted(Boolean flagDeleted) {
        this.flagDeleted = flagDeleted;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public String getDbName() {
        return dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public Date getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(Date expireDate) {
        this.expireDate = expireDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStoreCount() {
        return storeCount;
    }

    public void setStoreCount(String storeCount) {
        this.storeCount = storeCount;
    }

    public Boolean getFlagGrant() {
        return flagGrant;
    }

    public void setFlagGrant(Boolean flagGrant) {
        this.flagGrant = flagGrant;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getRtCount() {
        return rtCount;
    }

    public void setRtCount(String rtCount) {
        this.rtCount = rtCount;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }
}
