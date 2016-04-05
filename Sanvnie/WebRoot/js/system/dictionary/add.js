	//单独验证某一个input  class="checkpass"
	 jQuery.validator.addMethod("checkfield", function(value, element) {
	 	 return this.optional(element) || ((value.length <= 15) && (value.length>=1));
	 }, "字段由1至15位字符组合构成");
	 jQuery.validator.addMethod("checksortno",function(value,element){
		 return this.optional(element) || /^[0-9]{1,4}$/.test(value);
	 },"排序号最长4位数字")
	 $(function() {
	 	$("form").validate({
	 		submitHandler : function(form) {//必须写在验证前面，否则无法ajax提交
	 			ly.ajaxSubmit(form,{//验证新增是否成功
	 				type : "post",
	 				dataType:"json",
	 				success : function(data) {
	 					if (data=="success") {
	 						layer.confirm('添加成功!是否关闭窗口?', function(index) {
	 							parent.grid.loadData();
					        	parent.layer.close(parent.pageii);
					        	return false;
	 						});
	 						$("#form")[0].reset();
	 					} else {
	 						layer.msg('添加失败！');
	 					}
	 				}
	 			});
	 		},
			rules : {
				"dictionaryFormMap.code" : {
					required : true,
					remote : { // 异步验证是否同一字段下存在相同code
						type : "POST",
						url : 'isExist.shtml',
						data : {
							code : function() {
								return $("#code").val();
							},
							field : function(){
								return $("#field").val();
							}
						}
					}
				},
				"dictionaryFormMap.codeDesc" : {
					required : true,
					remote : {
						type : "POST",
						url : 'isExist.shtml',
						data : {
							codeDesc : function(){
								return $("#codeDesc").val();
							},
							field : function(){
								return $("#field").val();
							}
						}
					}
				}
			},
			messages : {
				"dictionaryFormMap.code" : {
					required : "请输入代码",
					remote : "该字段下已存在该代码"
				},
				"dictionaryFormMap.codeDesc" : {
					required : "请输入代码描述",
					remote : "该字段下已经存在该代码描述"	
				}
			},
	 		errorPlacement : function(error, element) {//自定义提示错误位置
	 			$(".l_err").css('display','block');
	 			//element.css('border','3px solid #FFCCCC');
	 			$(".l_err").html(error.html());
	 		},
	 		success: function(label) {//验证通过后
	 			$(".l_err").css('display','none');
	 		}
	 	});
	 });

