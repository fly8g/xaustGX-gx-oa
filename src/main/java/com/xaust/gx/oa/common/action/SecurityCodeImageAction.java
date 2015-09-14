package com.xaust.gx.oa.common.action;

import java.io.ByteArrayInputStream;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;
import com.xaust.gx.oa.common.utils.SecurityCode;
import com.xaust.gx.oa.common.utils.SecurityImage;

@Action("ConfirmCd")
@Results(
		{@Result(name = com.opensymphony.xwork2.Action.SUCCESS,
					type = "stream",
					params = {"contentType", "image/jpeg",
								"inputName", "imageStream",
								"bufferSize", "4096" })}
)
public class SecurityCodeImageAction extends GxoaCommonSupport {

	private static Logger log = LoggerFactory.getLogger(SecurityCodeImageAction.class);

	private static final long serialVersionUID = 1L;
	//图片流
	private ByteArrayInputStream imageStream;

	public ByteArrayInputStream getImageStream() {
		return imageStream;
	}
	public void setImageStream(ByteArrayInputStream imageStream) {
		this.imageStream = imageStream;
	}

	public String execute() throws Exception {
		//如果开启Hard模式，可以不区分大小写
		//String securityCode = SecurityCode.getSecurityCode(4,SecurityCodeLevel.Hard, false).toLowerCase();

		//获取默认难度和长度的验证码
		String securityCode = SecurityCode.getSecurityCode();
		imageStream = SecurityImage.getImageAsInputStream(securityCode);
		//放入session中
		session.put(SESSION_KEY_CONFIRM_CD, securityCode);
		log.info("CONFIRM_CD:" + securityCode);

		return SUCCESS;
	}
}
