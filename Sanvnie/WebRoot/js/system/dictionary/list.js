var pageii = null;
var grid = null;
$(function() {
	grid = lyGrid({
		id : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			width : "50px",
			hide : true
		}, {
			colkey : "field",
			name : "字段"
		}, {
			colkey : "fieldName",
			name : "字段名",
			width : "100px",
		}, {
			colkey : "code",
			name : "代码"
		}, {
			colkey : "codeDesc",
			name : "代码描述"
		},{
			colkey : "sortno",
			name : "排序号"
		},{
			colkey : "enable",
			name : "是否可用",
			renderData : function(rowindex,data, rowdata, column){
				return data=='0' ? '是' : '否'; 
			}
		},{
			colkey : "remark",
			name : "备注"
		} ],
		jsonUrl : rootPath + '/dictionary/findByPage.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	$("#addDictionary").click("click", function() {
		addDictionary();
	});
	$("#editDictionary").click("click", function() {
		editDictionary();
	});
	$("#delDictionary").click("click", function() {
		delDictionary();
	});
});
function editDictionary() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑",
		type : 2,
		area : [ "600px", "60%" ],
		content : rootPath + '/dictionary/editUI.shtml?id=' + cbox
	});
}

function addDictionary() {
	pageii = layer.open({
		title : "新增",
		type : 2,
		area : [ "600px", "60%" ],
		content : rootPath + '/dictionary/addUI.shtml'
	});
}
function delDictionary() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/dictionary/deleteEntity.shtml';
		var s = CommnUtil.ajax(url, {
			ids : cbox.join(",")
		}, "json");
		if (s == "success") {
			layer.msg('删除成功');
			grid.loadData();
		} else {
			layer.msg('删除失败');
		}
	});
}
