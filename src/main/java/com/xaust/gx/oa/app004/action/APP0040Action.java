package com.xaust.gx.oa.app004.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.xaust.gx.oa.common.action.GxoaCommonSupport;

/**
 * 会议制定Action.
 */
@Action("APP0040")
@Results({
	@Result(name = com.opensymphony.xwork2.Action.SUCCESS,
			type = "tiles",
			location = "APP0040"),
	@Result(name = com.opensymphony.xwork2.Action.INPUT,
			type = "tiles",
			location = "APP0040")
}) 
public class APP0040Action extends GxoaCommonSupport {
	
	private static final long serialVersionUID = 1L;
	
	public String regist() {
		return SUCCESS;
	}
	public String clear() {
		return SUCCESS;
	}
	public String execute() {
		return SUCCESS;
	}
}
