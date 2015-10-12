<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="jumbotron-contents">
<div class="container">
<ol class="breadcrumb">
	<li><a href="#"><s:text name="APP006.title" /></a></li>
	<li class="active"><s:text name="APP0060.title" /></li>
</ol>
<s:form class="form-horizontal" role="form">
<div class="col-sm-2">
	<button class="btn btn-primary"><span class="glyphicon glyphicon-refresh"></span> 收信</button>
	<button class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span> 写信</button>
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
</ul>
</div>
<div class="col-sm-10">
<div class="panel panel-default">
<div class="panel-heading">发件箱</div>
<div class="panel-body">
	<button class="btn btn-default btn-xs">发送</button>
	<button class="btn btn-default btn-xs">存草稿</button>
	<button class="btn btn-default btn-xs">添加附件</button>
	<div class="list-group"></div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="收件人"/>
		<div class="col-sm-11"><s:textfield name="mailInfo.receiver" class="form-control" placeholder="" /></div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="主题"/>
		<div class="col-sm-11"><s:textfield name="mailInfo.title" class="form-control" placeholder="" /></div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="附件"/>
		<div class="col-sm-11"><s:file name="meetingInfo.file1" class="form-control" placeholder=""/></div>
		<div class="col-sm-11 col-sm-offset-1"><s:file name="meetingInfo.file2" class="form-control" placeholder=""/></div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="正文"/>
		<div class="col-sm-11"><s:textarea name="mailInfo.content" class="form-control" placeholder=""/></div>
	</div>
</div>
</div>
</div>
</s:form>
</div>
</div>