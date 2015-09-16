<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<s:head />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:text name="APP0010.title" /></title>
</head>
<body>
<s:form>
	<%-- <s:select key="APP0010.userType" list="userType" listKey="stateAbbr" listValue="stateName" /> --%>
	<s:textfield key="APP0010.username" name="loginInfo.username" />
	<s:password key="APP0010.password" name="loginInfo.password" />
	<s:textfield key="APP0010.confirmCd" name="confirmCd" /> <img src="ConfirmCd" id="verify" style="cursor:pointer;" alt="看不清，换一张"/>
	<s:submit method="login"/>电冰箱
</s:form>
</body>
</html>
