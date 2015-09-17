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
			location = "index"),
	@Result(name = com.opensymphony.xwork2.Action.INPUT,
//			type = "dispatcher",
//			location = "/WEB-INF/jsp/app001/APP0010.jsp")
			type = "tiles",
			location = "APP0010")
}) 
public class APP0010LoginAction extends GxoaCommonSupport {
	
	private static final long serialVersionUID = 1L;
	
	private GxoaLoginInfo loginInfo;
	
	private List<State> userType ;
	
	private String confirmCd ;

	public void validateLogin() {
		String sesConfirmCd = (String)session.get(SESSION_KEY_CONFIRM_CD);
		if(!StringUtils.equals(sesConfirmCd, confirmCd)) {
			addFieldError("confirmCd", getText("E01000"));
		}
	}
	public String login() {
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

	public List<State> getUserType() {
		
		userType = new ArrayList<State>();
		userType.add(new State("0", getText("userType.0")));
		userType.add(new State("1", getText("userType.1")));
		userType.add(new State("9", getText("userType.9")) );
		
		return userType;
	}

	public String getConfirmCd() {
		return confirmCd;
	}

	public void setConfirmCd(String confirmCd) {
		this.confirmCd = confirmCd;
	}
}
