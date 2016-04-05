	var dataSource = [
			{province:'北京',city:'北京',name:'京',id:'1'},
			{province:'天津',city:'天津',name:'津',id:'2'},
			{province:'河北',city:'石家庄',name:'冀',id:'3'},
			{province:'山西',city:'太原',name:'晋',id:'4'},
			{province:'内蒙古自治区',city:'呼和浩特',name:'蒙',id:'5'},
			{province:'辽宁',city:'沈阳',name:'辽',id:'6'},
			{province:'吉林',city:'长春',name:'吉',id:'7'},
			{province:'黑龙江',city:'哈尔滨',name:'黑',id:'8'},
			{province:'上海',city:'上海',name:'沪',id:'9'},
			{province:'江苏',city:'南京',name:'苏',id:'10'},
			{province:'浙江',city:'杭州',name:'浙',id:'11'},
			{province:'安徽',city:'合肥',name:'皖',id:'12'},
			{province:'福建',city:'福州',name:'闽',id:'13'},
			{province:'江西',city:'南昌',name:'赣',id:'14'},
			{province:'山东',city:'济南',name:'鲁',id:'15'},
			{province:'河南',city:'郑州',name:'豫',id:'16'},
			{province:'湖北',city:'武汉',name:'鄂',id:'17'},
			{province:'湖南',city:'长沙',name:'湘',id:'18'},	
			{province:'广东',city:'广州',name:'粤',id:'19'},
			{province:'广西壮族自治区',city:'南宁',name:'桂',id:'20'},
			{province:'海南',city:'海口',name:'琼',id:'21'},
			{province:'重庆',city:'重庆',name:'渝',id:'22'},
			{province:'四川',city:'成都',name:'川',id:'23'},
			{province:'贵州',city:'贵阳',name:'黔',id:'24'},
			{province:'云南',city:'昆明',name:'滇',id:'25'},
			{province:'西藏',city:'西藏',name:'藏',id:'26'},
			{province:'陕西',city:'西安',name:'陕',id:'27'},
			{province:'甘肃',city:'兰州',name:'甘',id:'28'},
			{province:'青海',city:'西宁',name:'青',id:'29'},
			{province:'宁夏回族自治区',city:'银川',name:'宁',id:'30'},
			{province:'新疆维吾尔自治区',city:'乌鲁木齐',name:'新',id:'31'},
			{province:'台湾',city:'台北',name:'台',id:'32'},
			{province:'香港特别行政区',city:'香港',name:'港',id:'33'},
			{province:'澳门特别行政区',city:'澳门',name:'澳',id:'34'}
			];
$(function(){
	$('#btn_close').click(function(){
		zone_close();
	});		
});
function zone_close(){
	$('#mylist').empty();
	$('#myzone').hide();
}
	
	function zone_show(p,c){
		$('#mylist').empty();
		var result = null;
	
		result = $.grep(dataSource,function(val,key){
			if(val.province == p){
				return true;
			}else{
				return false;
			}
		});

		if(result == null){
			zone_close();
		}	
		$.each(result,function(key,val){
			$('#mylist').append('<tr><td class="one">省会：'+val.city+'</td><td style="width:25px"></td><td>简称：'+val.name+'</td><td style="width:150px;">&nbsp;</td><td><a class="active" nav-n="中国行政区划,'+val.province+',/division/china_province?id='+val.id+'" href="javascript:toProvince('+val.id+');">详情</a></td></tr>');
		});
		$('#myzone').show();
	}

function setProvince(p){
	var $v = p;
	if($v!=''){
		var result = $.grep(dataSource,function(val,key){
			if(val.province == $v){
				return true;
			}
			else{
				return false;
			}
		});
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