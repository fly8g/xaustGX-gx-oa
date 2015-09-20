<%-- 共通JSP --%>
<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<%-- HTML title定义区域 --%>
<s:set var="window_title_key">
	<tiles:getAsString name="window_title_key" />
</s:set>
<s:set var="disp_title_key">
	<tiles:getAsString name="disp_title_key" />
</s:set>
<title><s:property value="getText(#window_title_key)" /> <s:property value="getText(#disp_title_key)" /></title>


<%-- JS定义区域 --%>
<s:url value="/jquery/jquery-1.11.1.min.js" var="jquery" />
<s:url value="/jquery/jquery-ui/jquery-ui.min.js" var="jquery_ui" />
<s:url value="/bootstrap/js/bootstrap.min.js" var="bootstrap_js" />
<s:set var="disp_common_js">
	<tiles:getAsString name="disp_common_js" ignore="true" />
</s:set>
<s:url value="%{disp_common_js}" var="disp_common_js_url" />
<%-- 各画面用JS --%>
<s:set var="disp_js">
	<tiles:getAsString name="disp_js" ignore="true" />
</s:set>
<s:url value="%{disp_js}" var="disp_js_url" />

<script type="text/javascript" src="${jquery}"></script>
<script type="text/javascript" src="${jquery_ui}"></script>
<script type="text/javascript" src="${bootstrap_js}"></script>
<script type="text/javascript" src="${disp_common_js_url}"></script>
<script type="text/javascript" src="${disp_js_url}"></script>


<%-- CSS定义区域  --%>
<s:url value="/jquery/jquery-ui/jquery-ui.min.css" var="jquery_ui_css" />
<s:url value="/bootstrap/css/bootstrap-theme.min.css" var="bootstrap_theme_css" />
<s:url value="/bootstrap/css/bootstrap.min.css" var="bootstrap_css" />
<s:set var="disp_common_css">
	<tiles:getAsString name="disp_common_css" ignore="true" />
</s:set>
<s:url value="%{disp_common_css}" var="disp_common_css_url" />
<%-- 各画面用CSS --%>
<s:set var="disp_css">
	<tiles:getAsString name="disp_css" ignore="true" />
</s:set>
<s:url value="%{disp_css}" var="disp_css_url" />

<link rel="stylesheet" href="${jquery_ui_css}" type="text/css" />
<link rel="stylesheet" href="${bootstrap_theme_css}" type="text/css" />
<link rel="stylesheet" href="${bootstrap_css}" type="text/css" />
<link rel="stylesheet" href="${disp_common_css_url}" type="text/css" />
<link rel="stylesheet" href="${disp_css_url}" type="text/css" />

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<%-- 共通Head JSP定义区域 --%>
<tiles:insertDefinition name="commonHeader"/>

<!-- <div id="content"> -->

<%-- 各画面JSP定义区域  --%>
<tiles:insertAttribute name="body" />


<%-- 共通隐藏项目JSP定义区域 --%>
<tiles:insertDefinition name="commonHiddenArea"/>


<%-- 共通Message JSP定义区域 --%>
<tiles:insertDefinition name="commonMessager"/>


<%-- 共通Foot JSP定义区域 --%>
<tiles:insertDefinition name="commonFooter"/>
<!-- </div> -->
</body>
</html>