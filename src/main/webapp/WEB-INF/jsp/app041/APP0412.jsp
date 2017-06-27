<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="jumbotron-contents">
<div class="container">
<ol class="breadcrumb">
	<li><a href='<s:url action="APP0411" />'><s:text name="APP041.title" /></a></li>
	<li class="active"><s:text name="APP0412.title" /></li>
</ol>
<s:form class="form-horizontal" role="form">
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="公文类型"/>
		<div class="col-sm-3">
			<select name="meetingInfo.sponsorDept" class="form-control">
				<option value="0" selected="selected">财务申请</option>
				<option value="1">制度审批</option>
				<option value="2">决议</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="公文标题"/>
		<div class="col-sm-5"><s:textfield name="meetingInfo.title" class="form-control" placeholder="" /></div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="接收部门"/>
		<div class="col-sm-5"><s:textfield name="meetingInfo.participants" class="form-control" placeholder="" readonly="true" /></div>
		<div class="col-sm-1"><s:submit class="btn btn-default" key="添加" /></div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="起草时间"/>
		<div class="col-sm-3">
			<div class="input-group date form_datetime" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
				<input class="form-control" type="text" value="" readonly>
				<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
				<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
			</div>
		</div>
		<input type="hidden" id="dtp_input1" name="meetingInfo.startDt"  />
<%-- 		<s:label class="col-sm-1 control-label" key="发布时间"/>
		<div class="col-sm-3">
			<div class="input-group date form_datetime" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input2">
				<input class="form-control" type="text" value="" readonly>
				<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
				<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
			</div>
		</div>
		<input type="hidden" id="dtp_input2" name="meetingInfo.endDt" /> --%>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="公文内容"/>
		<div class="col-sm-11"><s:textarea name="meetingInfo.content" class="form-control" placeholder="" rows="18"/></div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="公文附件"/>
		<div class="col-sm-5"><s:file name="meetingInfo.file1" class="form-control" placeholder=""/></div>
		<div class="col-sm-5"><s:file name="meetingInfo.file2" class="form-control" placeholder=""/></div>
		<div class="col-sm-1"><s:submit class="btn btn-default" key="添加附件" /></div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="审核人"/>
		<div class="col-sm-5"><s:textfield name="meetingInfo.compere" class="form-control" placeholder="" readonly="true" /></div>
		<div class="col-sm-1"><s:submit class="btn btn-default" key="添加" /></div>
	</div>
<%-- 	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="签发人"/>
		<div class="col-sm-5"><s:textfield name="meetingInfo.compere" class="form-control" placeholder="" readonly="true" /></div>
		<div class="col-sm-1"><s:submit class="btn btn-default" key="添加" /></div>
	</div> --%>
<%-- 	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="审核意见"/>
		<div class="col-sm-5"><s:textarea name="meetingInfo.device" class="form-control" placeholder="" rows="5" readonly="true" /></div>
	</div> --%>
	<div class="form-group">
		<div class="col-sm-1 col-sm-offset-1"><s:submit method="regist" class="btn btn-primary btn-block" key="APP0411.regist" /></div>
		<div class="col-sm-1"><s:submit method="clear" class="btn btn-primary btn-block" key="APP0040.clear" /></div>
	</div>
</s:form>
</div>
</div>