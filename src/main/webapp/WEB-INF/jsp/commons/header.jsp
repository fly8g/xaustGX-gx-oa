<%-- 共通Head JSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><s:text name="application.title" /></a>
    </div>
    <div class="navbar-collapse collapse"><s:property value="#session.loginInfo.username" />
      <s:if test="#session.loginInfo.username != null">
        <p class="navbar-text navbar-right"><a class="navbar-link" href="#"><s:text name="application.logout" /></a></p>
        <p class="navbar-text navbar-right"><s:property value="#session.loginInfo.username" /></p>
        <p class="navbar-text navbar-right"><s:property value="#session.loginInfo.userId" /></p>
      </s:if>
    </div>
  </div>
</div>