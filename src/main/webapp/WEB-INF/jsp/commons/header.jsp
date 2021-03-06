<%-- 共通Head JSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
	<div class="row">
		<div class="col-md-4 navbar-header">
			<a class="navbar-brand" href='<s:url action="APP0010" />'><span class="glyphicon glyphicon-home"></span> <s:text name="application.title" /></a>
		</div>
		<s:if test="#session.loginInfo.username != null">
		<div class="col-md-8 navbar-header">
			<ul class="nav navbar-nav">
				<li><a href='<s:url action="APP0060" />'><span class="glyphicon glyphicon-envelope"></span> <s:text name="APP0060.title" /></a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-tasks"></span> <s:text name="APP004.title" /><span class="caret"></span></a>
					<ul class="dropdown-menu">
					<li><a href='<s:url action="APP0040" />'><s:text name="APP0040.title" /></a></li>
					<li class="disabled"><a href='<s:url action="APP0041" />'><s:text name="APP0041.title" /></a></li>
					<li class="disabled"><a href='<s:url action="APP0042" />'><s:text name="APP0042.title" /></a></li>
					<li class="disabled"><a href='<s:url action="APP0043" />'><s:text name="APP0043.title" /></a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-expand"></span> <s:text name="APP005.title" /><span class="caret"></span></a>
					<ul class="dropdown-menu">
					<li><a href='<s:url action="APP0050" />'><s:text name="APP0050.title" /></a></li>
					<li class="disabled"><a href='<s:url action="APP0051" />'><s:text name="APP0051.title" /></a></li>
					<li class="disabled"><a href='<s:url action="APP0052" />'><s:text name="APP0052.title" /></a></li>
					<li><a href='<s:url action="APP0053" />'><s:text name="APP0053.title" /></a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-file"></span> <s:text name="APP04.title" /><span class="caret"></span></a>
					<ul class="dropdown-menu">
					<li><a href='/gx-oa/APP0411!todo?flg=1.action'><s:text name="APP041.title" /></a></li>
					<li class="disabled"><a href='<s:url action="APP0412" />'><s:text name="APP042.title" /></a></li>
					</ul>
				</li>
<%-- 				<li><a href='<s:url action="APP0411" />'><span class="glyphicon glyphicon-upload"></span> <s:text name="APP041.title" /></a></li>
				<li><a href='<s:url action="APP0412" />'><span class="glyphicon glyphicon-download"></span> <s:text name="APP042.title" /></a></li> --%>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<p class="navbar-text navbar-right"><a class="navbar-link" href='<s:url action="APP0010" method="logout"/>'><span class="glyphicon glyphicon-log-out"></span> <s:text name="application.logout" /></a></p>
				<p class="navbar-text navbar-right"><s:property value="#session.loginInfo.username" /></p>
				<p class="navbar-text navbar-right"><span class="glyphicon glyphicon-user"></span> <s:property value="#session.loginInfo.userId" /></p>
			</ul>
		</div>
		</s:if>
	</div>
	</div>
</div>