package com.xaust.gx.oa.app006.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.xaust.gx.oa.common.action.GxoaCommonSupport;

/**
 * 写邮件Action.
 */
@Action("APP0061")
@Results({
	@Result(name = com.opensymphony.xwork2.Action.SUCCESS,
			type = "tiles",
			location = "APP0061"),
	@Result(name = com.opensymphony.xwork2.Action.INPUT,
			type = "tiles",
			location = "APP0061")
}) 
public class APP0061Action extends GxoaCommonSupport {
	
	private static final long serialVersionUID = 1L;
	
	public String execute() {
		return SUCCESS;
	}
}
