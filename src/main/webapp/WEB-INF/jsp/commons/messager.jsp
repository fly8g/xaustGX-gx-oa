<%-- 隐藏项目JSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="message container">
<div class="alert alert-danger">
	<s:label value="fieldErrors:"/>
	<s:fielderror />
</div>
<div class="alert ">
	<s:label value="actionErrors:"/>
	<s:actionerror />
</div>
<div class="alert alert-success">
	<s:label value="actionMessage:"/>
	<s:actionmessage />
</div>
</div>