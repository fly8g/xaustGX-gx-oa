package com.xaust.gx.oa.app001.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts.edit.model.State;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.xaust.gx.oa.common.action.GxoaCommonSupport;
import com.xaust.gx.oa.common.model.GxoaLoginInfo;

/**
 * Login Action.
 */
@Action("APP0010")
@Results({
	@Result(name = com.opensymphony.xwork2.Action.LOGIN,
			type = "tiles",
			location = "APP0010"),
	@Result(name = com.opensymphony.xwork2.Action.SUCCESS,
			type = "chain",
			location = "APP0010"),
	@Result(name = com.opensymphony.xwork2.Action.INPUT,
			type = "tiles",
			location = "APP0010")
}) 
public class APP0010LoginAction extends GxoaCommonSupport {
	
	private static final long serialVersionUID = 1L;
	
	private GxoaLoginInfo loginInfo;
	
	private List<State> userTypeList ;
	
	private String confirmCd ;

	public void validateLogin() {
		String sesConfirmCd = (String)session.get(SESSION_KEY_CONFIRM_CD);
		if(!StringUtils.equals(sesConfirmCd, confirmCd)) {
			addFieldError("confirmCd", getText("E01000"));
		}
	}
	public String login() {
		session.put("loginInfo", loginInfo);
		return SUCCESS;
	}
	public String execute() {
		return LOGIN;
	}

	public GxoaLoginInfo getLoginInfo() {
		return loginInfo;
	}

	public void setLoginInfo(GxoaLoginInfo loginInfo) {
		this.loginInfo = loginInfo;
	}

	public List<State> getUserTypeList() {
		
		userTypeList = new ArrayList<State>();
		userTypeList.add(new State("0", "系统管理员"));
		userTypeList.add(new State("1", "部门管理员"));
		userTypeList.add(new State("9", "普通用户"));
//		userType.add(new State("0", getText("userType.0")));
//		userType.add(new State("1", getText("userType.1")));
//		userType.add(new State("9", getText("userType.9")));
		
		return userTypeList;
	}

	public String getConfirmCd() {
		return confirmCd;
	}

	public void setConfirmCd(String confirmCd) {
		this.confirmCd = confirmCd;
	}
}
