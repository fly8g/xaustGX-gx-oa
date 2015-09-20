<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!-- <div class="clearfix visible-xs"></div> -->
<!-- <div id="main"> -->
<div class="jumbotron-contents">
<div class="container">
<s:form class="form-horizontal" role="form">
	<div class="form-group"></div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="APP0010.userType"/>
		<div class="col-sm-3"><s:select name="loginInfo.userType" list="userType" listKey="stateAbbr" listValue="stateName" class="form-control"/></div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="APP0010.username"/>
		<div class="col-sm-3"><s:textfield name="loginInfo.username" class="form-control" placeholder="" /></div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="APP0010.password"/>
		<div class="col-sm-3"><s:textfield name="loginInfo.password" class="form-control" placeholder=""/></div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="APP0010.confirmCd"/>
		<div class="col-sm-3"><s:textfield name="confirmCd" class="form-control" cssErrorClass="has-error" placeholder=""/></div>
		<div class="col-sm-1"><img src="ConfirmCd" id="verify" style="cursor:pointer;" alt="看不清，换一张"/></div>
	</div>
 	<div class="form-group">
		<div class="col-sm-1 col-sm-offset-2"><s:submit method="login" class="btn btn-primary btn-block" key="APP0010.login" /></div>
		<div class="col-sm-1"><s:submit method="regist" class="btn btn-primary btn-block" key="APP0010.regist" /></div>
	</div>
</s:form>
</div>
</div>
<!-- </div> -->