<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="jumbotron-contents">
<div class="container">
<ol class="breadcrumb">
	<li><a href="#"><s:text name="APP006.title" /></a></li>
	<li class="active"><s:text name="APP0060.title" /></li>
</ol>
<div class="col-sm-2">
	<button class="btn btn-primary" id="recev_mail"><span class="glyphicon glyphicon-refresh"></span> 收信</button>
	<button class="btn btn-primary" id="write_mail"><span class="glyphicon glyphicon-edit"></span> 写信</button>
	<div class="list-group"></div>
	<div class="list-group">
		<a href="#" class="list-group-item"><span class="badge">14</span>未读邮件</a>
		<a href="#" class="list-group-item"><span class="badge">54</span>收件箱</a>
		<a href="#" class="list-group-item"><span class="badge">2</span>草稿箱</a>
		<a href="#" class="list-group-item">已发送</a>
		<a href="#" class="list-group-item">已删除</a>
	</div>
	<div class="list-group"></div>
	<div class="list-group">
		<a href="#" class="list-group-item">联系人</a>
		<a href="#" class="list-group-item">常用地址</a>
	</div>
</div>
<div class="col-sm-10">
<div class="panel panel-default">
<div class="panel-heading">收件箱</div>
<div class="panel-body">
	<button class="btn btn-default btn-xs">删除</button>
	<button class="btn btn-default btn-xs">转发</button>
	<div class="btn-group">
		<button type="button" class="btn btn-default dropdown-toggle btn-xs" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">标记为... <span class="caret"></span></button>
		<ul class="dropdown-menu">
			<li><a href="#">已读邮件</a></li>
			<li><a href="#">未读邮件</a></li>
			<li role="separator" class="divider"></li>
			<li><a href="#">星标邮件</a></li>
			<li><a href="#">取消星标</a></li>
		</ul>
	</div>
	<div class="btn-group">
		<button type="button" class="btn btn-default dropdown-toggle btn-xs" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">移动到... <span class="caret"></span></button>
		<ul class="dropdown-menu">
			<li><a href="#">收件箱</a></li>
			<li><a href="#">已发送</a></li>
			<li role="separator" class="divider"></li>
			<li><a href="#">新建文件夹...</a></li>
		</ul>
	</div>
	<div class="list-group"></div>
	<table id="example" class="table table-condensed table-hover" cellspacing="0" width="100%"></table>
</div>
</div>
</div>
<div class="hidden">
<a id="write_mail_hid" href='<s:url action="APP0060" method="writeMail"/>'>写信</a>
</div>
</div>
</div>