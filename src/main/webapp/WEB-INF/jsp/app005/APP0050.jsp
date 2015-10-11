<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="jumbotron-contents">
<div class="container">
<ol class="breadcrumb">
	<li><a href="#"><s:text name="APP005.title" /></a></li>
	<li class="active"><s:text name="APP0050.title" /></li>
</ol>
<s:form class="form-horizontal" role="form">
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="标题"/>
		<div class="col-sm-11"><s:textfield name="newsInfo.title" class="form-control" placeholder="" /></div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="发布人"/>
		<div class="col-sm-11"><s:textfield name="newsInfo.sender" class="form-control" placeholder="" /></div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="发布时间"/>
		<div class="col-sm-3">
			<div class="input-group date form_datetime" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
				<input class="form-control" type="text" value="" readonly>
				<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
				<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
			</div>
		</div>
		<input type="hidden" id="dtp_input1" name="newsInfo.sendDt" />
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="内容"/>
		<div class="col-sm-11"><s:textarea name="newsInfo.content" class="form-control" placeholder="" rows="98"/></div>
	</div>
	<div class="form-group">
		<div class="col-sm-1 col-sm-offset-1"><s:submit method="regist" class="btn btn-primary btn-block" key="APP0050.regist" /></div>
		<div class="col-sm-1"><s:submit method="clear" class="btn btn-primary btn-block" key="APP0050.clear" /></div>
	</div>
</s:form>
</div>
</div>