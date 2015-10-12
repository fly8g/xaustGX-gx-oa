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

	private static final long serialVersionUID = 1L;

    public final String SESSION_KEY_CONFIRM_CD = GxoaCommonSupport.class.getCanonicalName() + ".SESSION_KEY_CONFIRM_CD";

    public final String SESSION_KEY_LOGIN_INFO = GxoaCommonSupport.class.getCanonicalName() + ".SESSION_KEY_LOGIN_INFO";

	public Map<String, Object> session;

	public static final String NEXT_SCREEN = "next_screen";

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
