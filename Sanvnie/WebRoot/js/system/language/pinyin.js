$(function(){
	$("#translate_btn").on("click",function(){
		var chinese_text=$("#chinese_text").val();
		var reg= new RegExp("[\\u4E00-\\u9FFF]+","g");
		if(reg.test(chinese_text)){
			$.ajax({
				url:rootPath+"/language/translatePinYin.shtml",
				type:"POST",
				data:{"chinese_text":chinese_text},
				success:function(data){
					var str='';
					if(data!=null&&data.length>0){
						str=data.substr(1,data.length-2);
					}
					$("#pinyin_text").val(str);
				}
			});
		}else{
			alert('输入的文本错误，请输入汉字');
		}
	});
	
	$("#addPort").on("click",function(){
		var route=$("#route").val();
		$.ajax({
			url:rootPath+"/port/addPort.shtml",
			type:"POST",
			data:{"route":route},
			success:function(data){
				alert('添加成功');
			}
		})
	});
	
});
