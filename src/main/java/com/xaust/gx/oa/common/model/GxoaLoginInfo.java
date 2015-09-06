package com.xaust.gx.oa.common.model;

import java.io.Serializable;

public class GxoaLoginInfo implements Serializable {

	private static final long serialVersionUID = 1L;

	private String username;
	private String password;
	private String email;
	private String familyNm;
	private String userTpye;
	private String roleId;
	private String deptCd;

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
	public String getFamilyNm() {
		return familyNm;
	}
	public void setFamilyNm(String familyNm) {
		this.familyNm = familyNm;
	}
	public String getUserTpye() {
		return userTpye;
	}
	public void setUserTpye(String userTpye) {
		this.userTpye = userTpye;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getDeptCd() {
		return deptCd;
	}
	public void setDeptCd(String deptCd) {
		this.deptCd = deptCd;
	}
}
