<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/common/common.jspf" %>	

<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
#container{margin:auto auto;width:665px;}
#mylist td{line-height:21px;padding: 0,30px}
</style>

 <div class="col-lg-3">
       <div class="wrapper wrapper-content project-manager">
       <h4>澳门特别行政区行政区划图</h4>
       <div id="container">
				  <div style="font-size:12px;margin-top:15px;margin-left:5px;">
				    <div style="margin-bottom:25px;margin-left:7px;position: relative;"> <img id="map" name="map" usemap="#m_map"  src="${pageContext.request.contextPath}/images/map.jpg" alt="">
				      <div id="myzone" style="width:393px;position: absolute;left:700px;top:150px;display:none;">
				        <div style="height: 22px; background-image: url('${pageContext.request.contextPath}/images/bg_top.png'); background-repeat: repeat; background-attachment: scroll; background-position: 0% 50%"> <img id="btn_close" style="cursor:pointer;float: right;margin: 11px 15px 0 0;" SRC="${pageContext.request.contextPath}/images/close.gif" alt="关闭"> </div>
				        <div style="background-image: url('${pageContext.request.contextPath}/images/bg_middle.png'); background-repeat: repeat; background-attachment: scroll; padding-left: 20px; padding-right: 20px; padding-top: 0; padding-bottom: 0; background-position: 0% 50%">
				          <div id="mytitle" style="margin-bottom:10px;line-height:14px;font-size:14px;font-family:Microsoft YaHei;"></div>
				          <table id="mylist">
				          </table>
				        </div>
				        <div style="height: 15px; background-image: url('${pageContext.request.contextPath}/images/bg_bottom.png'); background-repeat: repeat; background-attachment: scroll; background-position: 0% 50%"> </div>
				      </div>
				    </div>
				  </div>
				  <map name="m_map" id="m_map">
				    <area shape="rect" coords="552, 79, 601, 104" href="javascript:setProvince('黑龙江')" alt="黑" />
				    <area shape="rect" coords="542, 125, 579, 149" href="javascript:setProvince('吉林')" alt="吉" />
				    <area shape="rect" coords="523, 170, 554, 192" href="javascript:setProvince('辽宁')" alt="辽" />
				    <area shape="rect" coords="460, 181, 485, 197" href="javascript:setProvince('北京')" alt="京" />
				    <area shape="rect" coords="472, 202, 499, 215" href="javascript:setProvince('天津')" alt="津" />
				    <area shape="rect" coords="449, 221, 473, 233" href="javascript:setProvince('河北')" alt="冀" />
				    <area shape="rect" coords="113, 152, 162, 183" href="javascript:setProvince('新疆维吾尔自治区')" alt="新" />
				    <area shape="rect" coords="246, 187, 291, 213" href="javascript:setProvince('甘肃')" alt="甘" />
				    <area shape="rect" coords="362, 178, 410, 207" href="javascript:setProvince('内蒙古自治区')" alt="蒙" />
				    <area shape="rect" coords="377, 276, 413, 298" href="javascript:setProvince('陕西')" alt="陕" />
				    <area shape="rect" coords="308, 324, 335, 342" href="javascript:setProvince('四川')" alt="川" />
				    <area shape="rect" coords="366, 337, 399, 359" href="javascript:setProvince('重庆')" alt="渝" />
				    <area shape="rect" coords="364, 379, 393, 400" href="javascript:setProvince('贵州')" alt="黔" />
				    <area shape="rect" coords="295, 403, 321, 420" href="javascript:setProvince('云南')" alt="云" />
				    <area shape="rect" coords="404, 479, 428, 493" href="javascript:setProvince('海南')" alt="琼" />
				    <area shape="rect" coords="392, 419, 420, 440" href="javascript:setProvince('广西壮族自治区')" alt="桂" />
				    <area shape="rect" coords="444, 421, 471, 435" href="javascript:setProvince('广东')" alt="粤" />
				    <area shape="rect" coords="418, 368, 448, 388" href="javascript:setProvince('湖南')" alt="湘" />
				    <area shape="rect" coords="500, 377, 530, 399" href="javascript:setProvince('福建')" alt="闽" />
				    <area shape="rect" coords="473, 350, 500, 367" href="javascript:setProvince('江西')" alt="赣" />
				    <area shape="rect" coords="419, 320, 449, 341" href="javascript:setProvince('湖北')" alt="鄂" />
				    <area shape="rect" coords="481, 306, 506, 324" href="javascript:setProvince('安徽')" alt="皖" />
				    <area shape="rect" coords="523, 329, 550, 345" href="javascript:setProvince('浙江')" alt="浙" />
				    <area shape="rect" coords="544, 307, 569, 321" href="javascript:setProvince('上海')" alt="沪" />
				    <area shape="rect" coords="517, 280, 545, 303" href="javascript:setProvince('江苏')" alt="苏" />
				    <area shape="rect" coords="432, 278, 461, 298" href="javascript:setProvince('河南')" alt="豫" />
				    <area shape="rect" coords="415, 240, 439, 258" href="javascript:setProvince('山西')" alt="晋" />
				    <area shape="rect" coords="476, 243, 511, 265" href="javascript:setProvince('山东')" alt="鲁" />
				    <area shape="rect" coords="142, 285, 168, 306" href="javascript:setProvince('西藏自治区')" alt="藏">
				    <area shape="rect" coords="342,240,372,255" href="javascript:setProvince('宁夏回族自治区')" alt='宁'/>
				    <area shape="rect" coords="234,243,280,273" href="javascript:setProvince('青海')" alt='青'/>
				    <area shape="rect" coords="544,400,574,415" href="javascript:setProvince('台湾')" alt="台" />
				    <area shape="rect" coords="485,435,515,450" href="javascript:setProvince('香港特别行政区')" alt="港" />
				  	<area shape="rect" coords="444,453,474,468" href="javascript:setProvince('澳门特别行政区')" alt="澳" />
				  </map>
				</div>               
     </div>
 </div>	
					