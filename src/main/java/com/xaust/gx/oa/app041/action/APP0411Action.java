package com.xaust.gx.oa.app041.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.xaust.gx.oa.common.action.GxoaCommonSupport;
import com.xaust.gx.oa.common.model.GxoaLoginInfo;

/**
 * 发文管理Action.
 */
@Action("APP0411")
@Results({
	@Result(name = GxoaCommonSupport.NEXT_SCREEN,
			type = "redirect",
			location = "APP0412"),
	@Result(name = com.opensymphony.xwork2.Action.SUCCESS,
			type = "tiles",
			location = "APP0411"),
	@Result(name = com.opensymphony.xwork2.Action.INPUT,
			type = "tiles",
			location = "APP0411")
}) 
public class APP0411Action extends GxoaCommonSupport {
	
	private static final long serialVersionUID = 1L;

//	private APP0411Bean app0411bean;
	private String flg;

	public String execute() {
		return SUCCESS;
	}
	public String addDoc() {
		return NEXT_SCREEN;
	}
	public String todo() {
		return SUCCESS;
	}
	public String send() {
		return SUCCESS;
	}
	public String getFlg() {
		return flg;
	}
	public void setFlg(String flg) {
		this.flg = flg;
	}
}
