$(function(){
	var html ='';
	var len=$('#topli li').length;
	if(len>0){
		$('#topli li').each(function(i,dom){
			if(i<3){
				html+='<li>'+$(this).html()+'</li>';
			}
		})
	}
	html+='<li><a href="javascript:void(0)">'+province_name+'</a></li>';
	$("#topli").html(html);
	$('#btn_close').click(function(){
		zone_close();
	});	
})
	
	
function zone_close(){
	$('#mylist').empty();
	$('#myzone').hide();
}
	
	function zone_show(p,c){
		$('#mylist').empty();
		var result = null;
	
		result = $.grep(dataSource,function(val,key){
			if(p=='北京城区'){
				if(val.name=='东城区'||val.name=='西城区'||val.name=='朝阳区'||val.name=='丰台区'||val.name=='石景山区'||val.name=='海淀区'){
					return true;
				}else{
					return false;
				}
			}else if(p=='天津城区'){
				if(val.name=='和平区'||val.name=='河东区'||val.name=='河西区'||val.name=='南开区'||val.name=='河北区'||val.name=='红桥区'||val.name=='津南区'){
					return true;
				}else{
					return false;
				}
			}else if(p=='上海城区'){
				if(val.name=='黄埔区'||val.name=='徐汇区'||val.name=='长宁区'||val.name=='静安区'||val.name=='普陀区'||val.name=='虹口区'||val.name=='杨浦区'){
					return true;
				}else{
					return false;
				}
			}else if(p=='重庆城区'){
				if(val.name=='渝中区'||val.name=='大渡口区'||val.name=='沙坪坝区'||val.name=='九龙坡区'||val.name=='南岸区'||val.name=='北碚区'||val.name=='渝北区'||val.name=='黔江区'){
					return true;
				}else{
					return false;
				}
			}else{
				if(val.name == p){
					return true;
				}else{
					return false;
				}
			}
			
		});

		if(result == null){
			zone_close();
		}	
		$.each(result,function(key,val){
			$('#mylist').append('<tr><td class="one">行政区划：'+val.name+'</td>'+'<td style="width:160px">&nbsp;</td><td><a class="active" href="javascript:toCity('+val.id+');">详情</a></td></tr>');
		});
		$('#myzone').show();
	}

function setCity(p){
	var $v = p;
	if($v!=''){
		zone_show($v,'');
	}
}

function toProvince(id){
	var url=rootPath+"/division/china_province.shtml?id="+id;
	var tb = $("#loadhtml");
	tb.load(url);
}

function toCity(id){
	var url=rootPath+"/division/china_city.shtml?id="+id;
	var tb = $("#loadhtml");
	tb.load(url);
}
