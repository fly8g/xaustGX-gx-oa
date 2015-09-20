<%-- 隐藏项目JSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="hidden">

<%-- 画面上的验证错误提示 信息--%>
<div id="hidden_message">
	<s:fielderror />
	<s:actionerror />
	<s:actionmessage />
</div>
<div id="fieldErrors">
	<s:iterator value="fieldErrors" var="fieldError">
		<span class="property"><s:property value="%{#fieldError.key}"/></span>
	</s:iterator>
</div>
</div>