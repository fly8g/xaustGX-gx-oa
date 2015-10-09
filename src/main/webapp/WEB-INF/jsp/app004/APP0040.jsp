<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!-- <div class="clearfix visible-xs"></div> -->
<!-- <div id="main"> -->
<div class="jumbotron-contents">
<div class="container">
<s:form class="form-horizontal" role="form">
	<div class="form-group"></div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="会议室"/>
		<div class="col-sm-5"><s:textfield name="meetingInfo.address" class="form-control" placeholder="" /></div>
		<%-- <s:submit method="" class="btn btn-default" key="会议室选择" />
		<s:submit method="" class="btn btn-default" key="从预定中选择" /> --%>
		<div class="col-sm-1"><s:submit method="" class="btn btn-default" key="会议室选择" /></div>
		<div class="col-sm-1"><s:submit method="" class="btn btn-default" key="从预定中选择" /></div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="主办部门"/>
		<div class="col-sm-3">
			<select name="meetingInfo.sponsorDept" class="form-control">
				<option value="0" selected="selected">国际学院</option>
				<option value="1">人文管理学院</option>
				<option value="2">建筑与土木工程学院</option>
				<option value="3">机电信息学院</option>
				<option value="4">能源学院</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="会议议题"/>
		<div class="col-sm-5"><s:textfield name="meetingInfo.title" class="form-control" placeholder="" /></div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="会议性质"/>
		<div class="col-sm-2">
			<select name="meetingInfo.type1" class="form-control">
				<option value="0" selected="selected">常规会议</option>
				<option value="1">临时会议</option>
				<option value="2">周次会议</option>
				<option value="3">月次会议</option>
			</select>
		</div>
		<div>
			<s:label class="col-sm-1 control-label" key="重要级别"/>
			<div class="col-sm-2 radio">
				<label><input type="radio" name="meetingInfo.type2" id="meetingInfo_type2_0" value="0"/>普通</label>
				<label><input type="radio" name="meetingInfo.type2" id="meetingInfo_type2_1" value="1"/>重要</label>
			</div>
		</div>
	</div>
	<div class="form-group">
		<s:label class="col-sm-1 control-label" key="资源准备"/>
		<div class="col-sm-5"><s:textarea name="meetingInfo.device" class="form-control" placeholder="" rows="8"/></div>
	</div>
 	<div class="form-group">
		<div class="col-sm-1 col-sm-offset-2"><s:submit method="regist" class="btn btn-primary btn-block" key="APP0040.regist" /></div>
		<div class="col-sm-1"><s:submit method="clear" class="btn btn-primary btn-block" key="APP0040.clear" /></div>
	</div>
</s:form>
</div>
</div>
<!-- </div> -->