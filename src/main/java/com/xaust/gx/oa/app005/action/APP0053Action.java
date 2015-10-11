package com.xaust.gx.oa.app005.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.xaust.gx.oa.common.action.GxoaCommonSupport;

/**
 * 新闻浏览Action.
 */
@Action("APP0053")
@Results({
	@Result(name = com.opensymphony.xwork2.Action.SUCCESS,
			type = "tiles",
			location = "APP0053"),
	@Result(name = com.opensymphony.xwork2.Action.INPUT,
			type = "tiles",
			location = "APP0053")
}) 
public class APP0053Action extends GxoaCommonSupport {
	
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
