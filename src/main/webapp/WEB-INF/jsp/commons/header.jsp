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
    <s:if test="#session.loginInfo.username != null">
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li></li>
        <li></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><s:text name="APP004.title" /><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href='<s:url action="APP0040" />'><s:text name="APP0040.title" /></a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <p class="navbar-text navbar-right"><a class="navbar-link" href="#"><s:text name="application.logout" /></a></p>
        <p class="navbar-text navbar-right"><s:property value="#session.loginInfo.username" /></p>
        <p class="navbar-text navbar-right"><s:property value="#session.loginInfo.userId" /></p>
      </ul>
    </div>
    </s:if>
  </div>
</div>