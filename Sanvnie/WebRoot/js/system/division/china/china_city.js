$(function(){
	var html ='';
	var len=$('#topli li').length;
	if(len>0){
		$('#topli li').each(function(i,dom){
			if(i!=len-1){
				html+='<li>'+$(this).html()+'</li>';
			}
		})
	}
	var url = rootPath+"/division/china_province.shtml?id=13";
	html+='<li><a href="javascript:void(0);" onclick="toProvince('+province_id+')">'+province_name+'</a></li>';
	html+='<li><a href="javascript:void(0);">'+city_name+'</a></li>';
	$("#topli").html(html);
	$('#btn_close').click(function(){
		zone_close();
	});		
});


function toProvince(id){
	var url=rootPath+"/division/china_province.shtml?id="+id;
	var tb = $("#loadhtml");
	tb.load(url);
}