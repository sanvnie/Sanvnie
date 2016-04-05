<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/dictionary/edit.js"></script>
<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
}

.col-sm-9 {
	width: 85%;
	float: left;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/dictionary/editEntity.shtml">
		<input type="hidden" class="form-control checkacc" value="${dictionary.id}"
			name="dictionaryFormMap.id" id="id">
		<section class="panel panel-default">
			<div class="panel-body">
				<div class="form-group">
					<label class="col-sm-3 control-label">字段</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkfield"
							placeholder="请输入字段" name="dictionaryFormMap.field" id="field" value="${dictionary.field}">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">字段名</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkfieldname"
							placeholder="请输入字段名" name="dictionaryFormMap.fieldName" id="fieldName" value="${dictionary.fieldName}">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">代码</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" placeholder="请输入代码"
							name="dictionaryFormMap.code" id="code" value="${dictionary.code}">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">代码描述</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" placeholder="请输入代码描述"
							name="dictionaryFormMap.codeDesc" id="codeDesc" value="${dictionary.codeDesc}">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">启用状态</label>
					<div class="col-sm-9">
						<div class="btn-group m-r">
							<button data-toggle="dropdown"
								class="btn btn-sm btn-default dropdown-toggle">
								<span class="dropdown-label">
									<c:if test="${dictionary.enable eq 0}">是</c:if>
									<c:if test="${dictionary.enable eq 1}">否</c:if>
								</span> 
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu dropdown-select">
								<li class=""><a href="#"><input type="radio"
										name="dictionaryFormMap.enable" value="0" <c:if test="${dictionary.enable eq 0}"> checked="checked"</c:if>>是</a></li>
								<li class="active"><a href="#"><input type="radio"
										name="dictionaryFormMap.enable" value="1" <c:if test="${dictionary.enable eq 1}"> checked="checked"</c:if>>否</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">排序号</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checksortno" placeholder="请输入排序号"
							name="dictionaryFormMap.sortno" id="sortno" value="${dictionary.sortno}">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">备注</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" placeholder="请输入备注"
							name="dictionaryFormMap.remark" id="remark" value="${dictionary.remark}">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
			</div>
			<footer class="panel-footer text-right bg-light lter">
			<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> 
	</section>
	</form>
	<script type='text/javascript'>
		/* $(function(){
			$("from input[name='enable'][value='${role.enable}']").attr("checked","checked");
			alert("input[name='enable'][value='${role.enable}']");
		}); */
	</script>
</body>
</html>