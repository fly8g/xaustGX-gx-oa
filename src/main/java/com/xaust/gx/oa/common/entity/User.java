package com.xaust.gx.oa.common.entity;

import java.util.Date;

public class User {
    private Integer userId;

    private String username;

    private String password;

    private String staffId;

    private Date lastLoginDt;

    private String remark;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStaffId() {
        return staffId;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public Date getLastLoginDt() {
        return lastLoginDt;
    }

    public void setLastLoginDt(Date lastLoginDt) {
        this.lastLoginDt = lastLoginDt;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}