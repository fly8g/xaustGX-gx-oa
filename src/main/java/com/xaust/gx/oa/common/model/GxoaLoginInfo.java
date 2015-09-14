package com.xaust.gx.oa.common.model;

import java.io.Serializable;

public class GxoaLoginInfo implements Serializable {

	private static final long serialVersionUID = 1L;

	private String userId;
	private String username;
	private String password;
	private String userTpye;
	private String lastLoginDt;
	private String deptCd;
	private String email;

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserTpye() {
		return userTpye;
	}
	public void setUserTpye(String userTpye) {
		this.userTpye = userTpye;
	}
	public String getLastLoginDt() {
		return lastLoginDt;
	}
	public void setLastLoginDt(String lastLoginDt) {
		this.lastLoginDt = lastLoginDt;
	}
	public String getDeptCd() {
		return deptCd;
	}
	public void setDeptCd(String deptCd) {
		this.deptCd = deptCd;
	}
}
