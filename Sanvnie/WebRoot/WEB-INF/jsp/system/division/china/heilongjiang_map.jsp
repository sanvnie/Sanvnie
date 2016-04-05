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
       <h4>黑龙江省行政区划图</h4>
       <div id="container">
				  <div style="font-size:12px;margin-top:15px;margin-left:5px;">
				    <div style="margin-bottom:25px;margin-left:7px;position: relative;"> <img id="map" name="map" usemap="#m_map"  src="${pageContext.request.contextPath}/images/map/heilongjiang.png">
				      <div id="myzone" style="width:393px;position: absolute;left:170px;top:650px;display:none;">
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
				    <area shape="rect" coords="296, 247, 346, 273" href="javascript:setCity('黑河')"/>
				    <area shape="rect" coords="542, 125, 579, 149" href="javascript:setCity('吉林')"/>
				    <area shape="rect" coords="523, 170, 554, 192" href="javascript:setCity('辽宁')"/>
				    <area shape="rect" coords="460, 181, 485, 197" href="javascript:setCity('北京')"/>
				    <area shape="rect" coords="472, 202, 499, 215" href="javascript:setCity('天津')"/>
				    <area shape="rect" coords="449, 221, 473, 233" href="javascript:setCity('河北')"/>
				    <area shape="rect" coords="158, 72, 212, 103" href="javascript:setCity('大兴安岭地区')"/>
				    <area shape="rect" coords="246, 187, 291, 213" href="javascript:setCity('甘肃')"/>
				    <area shape="rect" coords="362, 178, 410, 207" href="javascript:setCity('内蒙古自治区')"/>
				    <area shape="rect" coords="377, 276, 413, 298" href="javascript:setCity('陕西')"/>
				    <area shape="rect" coords="308, 324, 335, 342" href="javascript:setCity('四川')"/>
				    <area shape="rect" coords="366, 337, 399, 359" href="javascript:setCity('重庆')"/>
				    <area shape="rect" coords="364, 379, 393, 400" href="javascript:setCity('贵州')"/>
				    <area shape="rect" coords="295, 403, 321, 420" href="javascript:setCity('云南')"/>
				    <area shape="rect" coords="404, 479, 428, 493" href="javascript:setCity('海南')"/>
				    <area shape="rect" coords="392, 419, 420, 440" href="javascript:setCity('广西壮族自治区')"/>
				    <area shape="rect" coords="444, 421, 471, 435" href="javascript:setCity('广东')"/>
				    <area shape="rect" coords="418, 368, 448, 388" href="javascript:setCity('湖南')"/>
				    <area shape="rect" coords="500, 377, 530, 399" href="javascript:setCity('福建')"/>
				    <area shape="rect" coords="473, 350, 500, 367" href="javascript:setCity('江西')"/>
				    <area shape="rect" coords="419, 320, 449, 341" href="javascript:setCity('湖北')"/>
				    <area shape="rect" coords="481, 306, 506, 324" href="javascript:setCity('安徽')"/>
				    <area shape="rect" coords="523, 329, 550, 345" href="javascript:setCity('浙江')"/>
				    <area shape="rect" coords="544, 307, 569, 321" href="javascript:setCity('上海')"/>
				    <area shape="rect" coords="517, 280, 545, 303" href="javascript:setCity('江苏')"/>
				    <area shape="rect" coords="432, 278, 461, 298" href="javascript:setCity('河南')"/>
				    <area shape="rect" coords="415, 240, 439, 258" href="javascript:setCity('山西')"/>
				  </map>
				</div>               
     </div>
 </div>	
					