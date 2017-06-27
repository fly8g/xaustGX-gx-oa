package com.xaust.gx.oa.common.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MD5Util {

	/**
	 * 进行MD5加密
	 * 
	 * @param info 要加密的信息
	 * @return String 加密后的字符串
	 */
	public static String encryptToMD5(String info) {
		byte[] digesta = null;
		try {
			// 得到一个md5的消息摘要
			MessageDigest alga = MessageDigest.getInstance("MD5");
			// 添加要进行计算摘要的信息
			alga.update(info.getBytes());
			// 得到该摘要
			digesta = alga.digest();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		// 将摘要转为字符串
		String rs = byte2HexStr(digesta);
		return rs;
	}

	 /**
	 * 将指定byte数组转换成16进制字符串
	 * @param b 要转换的byte数组
	 * @return String 转换后的字符串
	 */
	private static String byte2HexStr(byte[] b) {
		StringBuffer hexString = new StringBuffer();
		for (int i = 0; i < b.length; i++) {
			String hex = Integer.toHexString(b[i] & 0xFF);
			if (hex.length() == 1) {
				hex = '0' + hex;
			}
			hexString.append(hex.toUpperCase());
		}
		return hexString.toString();
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(MD5Util.encryptToMD5("********1"));
		System.out.println(MD5Util.encryptToMD5("********2"));
		System.out.println(MD5Util.encryptToMD5("********3"));
		System.out.println(MD5Util.encryptToMD5(""));
//		System.out.println(MD5Util.encryptToMD5(null));
	}

//	public void send(String from, String to, String subject, String content) {
//	    Properties props = new Properties();
//	    props.put("mail.smtp.host", host); // 指定SMTP服务器
//	    props.put("mail.smtp.auth", "true"); // 指定是否需要SMTP验证
//	    try {
//	        Session mailSession = Session.getDefaultInstance(props);
//	        Message message = new MimeMessage(mailSession);
//	        message.setFrom(new InternetAddress(from)); // 发件人
//	        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to)); // 收件人
//	        message.setSubject(subject); // 邮件主题
//	        message.setText(content); // 邮件内容
//	        message.saveChanges();
//	        Transport transport = mailSession.getTransport("smtp");
//	        transport.connect(host, user, password);
//	        transport.sendMessage(message, message.getAllRecipients());
//	        transport.close();
//	    } catch(Exception e) {
//	        System.out.println(e);
//	    }
//	}
}
