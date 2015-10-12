package com.xaust.gx.oa.app006.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.xaust.gx.oa.common.action.GxoaCommonSupport;

/**
 * 我的邮箱Action.
 */
@Action("APP0060")
@Results({
	@Result(name = GxoaCommonSupport.NEXT_SCREEN,
			type = "chain",
			location = "APP0061"),
	@Result(name = com.opensymphony.xwork2.Action.SUCCESS,
			type = "tiles",
			location = "APP0060"),
	@Result(name = com.opensymphony.xwork2.Action.INPUT,
			type = "tiles",
			location = "APP0060")
}) 
public class APP0060Action extends GxoaCommonSupport {
	
	private static final long serialVersionUID = 1L;
	
	public String writeMail() {
		return NEXT_SCREEN;
	}
	public String clear() {
		return SUCCESS;
	}
	public String execute() {
		return SUCCESS;
	}
}
