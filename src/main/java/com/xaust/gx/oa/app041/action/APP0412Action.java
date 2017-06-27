package com.xaust.gx.oa.app041.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.xaust.gx.oa.common.action.GxoaCommonSupport;

/**
 * 新增发文Action.
 */
@Action("APP0412")
@Results({
	@Result(name = com.opensymphony.xwork2.Action.SUCCESS,
			type = "tiles",
			location = "APP0412"),
	@Result(name = com.opensymphony.xwork2.Action.INPUT,
			type = "tiles",
			location = "APP0412")
}) 
public class APP0412Action extends GxoaCommonSupport {
	
	private static final long serialVersionUID = 1L;
	
	private String example_length;
	
	public String execute() {
		return SUCCESS;
	}

	public String getExample_length() {
		return example_length;
	}

	public void setExample_length(String example_length) {
		this.example_length = example_length;
	}
}
