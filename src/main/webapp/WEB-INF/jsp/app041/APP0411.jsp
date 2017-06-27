<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="jumbotron-contents">
<div class="container">
<ol class="breadcrumb">
	<li><a href='<s:url action="APP0411" />'><s:text name="APP041.title" /></a></li>
</ol>
<s:form class="form-horizontal" role="form">
<div class="col-sm-2">
	<button class="btn btn-primary btn-block" id="add_doc_btn"><span class="glyphicon glyphicon-plus"></span> 新增发文</button>
	<div class="list-group"></div>
	<div class="list-group">
		<a href='<s:url action="APP0411" method="send"/>'class="list-group-item"><span class="badge">17</span>全部发文</a>
	</div>
	<div class="list-group">
		<a href='<s:url action="APP0411" method="todo?flg=1"/>' class="list-group-item"><span class="badge">3</span>待审核</a>
		<a href='<s:url action="APP0411" method="todo?flg=2"/>' class="list-group-item"><span class="badge">2</span>待签发</a>
		<a href='<s:url action="APP0411" method="send"/>' class="list-group-item"><span class="badge">4</span>待送发</a>
	</div>
	<div class="list-group"></div>
	<div class="list-group">
		<a href='<s:url action="APP0411" method="send"/>' class="list-group-item"><span class="badge">8</span>已送发</a>
		<a href="#" class="list-group-item"><span class="badge">0</span>已删除</a>
	</div>
</div>
<div class="col-sm-10">
<div class="panel panel-default">
<s:if test='flg == "1.action"'>
<div class="panel-heading">待审核</div>
<div class="panel-body">
	<table id="example" class="table table-condensed table-hover" cellspacing="0" width="100%"></table>
</div>
</s:if>
<s:elseif test='flg == "2.action"'>
<div class="panel-heading">待签发</div>
<div class="panel-body">
	<table id="example" class="table table-condensed table-hover" cellspacing="0" width="100%"></table>
</div>
</s:elseif>
<s:else>
<div class="panel-heading">全部发文</div>
<div class="panel-body">
	<table id="example" class="table table-condensed table-hover" cellspacing="0" width="100%"></table>
</div>
</s:else>
</div>
</div>
</s:form>

<!-- Modal 发文内容 -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">发文内容预览</h4>
      </div>
      <div class="modal-body">
        <h3><p class="text-center">高新学院发文样例001</p></h3>
        <p>&nbsp;</p>
        <p class="text-center">校财务办发〔2016〕第13号</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>高新学院发文内容</p>
        <p>高新学院发文内容</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>高新学院发文内容</p>
        <p>高新学院发文内容</p>
        <p>&nbsp;</p>
        <p>高新学院发文内容</p>
        <p>高新学院发文内容</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <b><p class="text-right">校财务办&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></b>
        <b><p class="text-right">二零一六年八月二十日</p></b>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </div>
    </div>
  </div>
</div>

<!-- Modal 审核意见-->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">发文审核</h4>
      </div>
      <div class="modal-body">
        <s:form class="form-horizontal" role="form">
        	<div class="form-group">
				<s:label class="col-sm-2 control-label" key="审核意见"/>
				<div class="col-sm-9"><s:textarea class="form-control" placeholder="" rows="8"/></div>
			</div>
        </s:form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">退回</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal">同意</button>
      </div>
    </div>
  </div>
</div>
</div>
</div>