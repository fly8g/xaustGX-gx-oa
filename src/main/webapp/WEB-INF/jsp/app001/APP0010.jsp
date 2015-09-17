<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:form>
	<%-- <s:select key="APP0010.userType" list="userType" listKey="stateAbbr" listValue="stateName" /> --%>
	<s:textfield key="APP0010.username" name="loginInfo.username" />
	<s:password key="APP0010.password" name="loginInfo.password" />
	<s:textfield key="APP0010.confirmCd" name="confirmCd" /> <img src="ConfirmCd" id="verify" style="cursor:pointer;" alt="看不清，换一张"/>
	<s:submit method="login"/>电冰箱
</s:form>
