package com.xaust.gx.oa.common.action;

import java.util.Map;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Base Action class.
 */
@ParentPackage("basic")
public class GxoaCommonSupport extends ActionSupport implements SessionAware {

    public final String SESSION_KEY_CONFIRM_CD = this.getClass().getName() + "SESSION_KEY_CONFIRM_CD";

	public Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
