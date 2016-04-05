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
       <h4>重庆市行政区划图</h4>
       <div id="container">
				  <div style="font-size:12px;margin-top:15px;margin-left:5px;">
				    <div style="margin-bottom:25px;margin-left:7px;position: relative;"> <img id="map" name="map" usemap="#m_map"  src="${pageContext.request.contextPath}/images/map/chongqing.png" alt="">
				      <div id="myzone" style="width:393px;position: absolute;left:170px;top:600px;display:none;">
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
				    <area shape="rect" coords="482, 104, 531, 124" href="javascript:setCity('巫溪县')"/>
				    <area shape="rect" coords="552, 155, 589, 179" href="javascript:setCity('巫山县')"/>
				    <area shape="rect" coords="493, 180, 530, 202" href="javascript:setCity('奉节县')"/>
				    <area shape="rect" coords="430, 157, 472, 181" href="javascript:setCity('云阳县')"/>
				    <area shape="rect" coords="372, 212, 412, 235" href="javascript:setCity('万州区')"/>
				    <area shape="rect" coords="299, 221, 335, 240" href="javascript:setCity('梁平县')"/>
				    <area shape="rect" coords="380, 127, 412, 151" href="javascript:setCity('开县')" />
				    <area shape="rect" coords="410,  42, 455,  66" href="javascript:setCity('城口县')"/>
				    <area shape="rect" coords="262, 269, 300, 293" href="javascript:setCity('垫江县')"/>
				    <area shape="rect" coords="322, 269, 352, 293" href="javascript:setCity('忠县')"/>
				    <area shape="rect" coords="362, 299, 402, 323" href="javascript:setCity('石柱土家族自治县')"/>
				    <area shape="rect" coords="309, 324, 352, 348" href="javascript:setCity('丰都县')"/>
				    <area shape="rect" coords="228, 319, 270, 338" href="javascript:setCity('长寿区')"/>
				    <area shape="rect" coords="248, 354, 290, 378" href="javascript:setCity('涪陵区')"/>
				    <area shape="rect" coords="283, 400, 335, 424" href="javascript:setCity('武隆县')"/>
				    <area shape="rect" coords="352, 396, 405, 418" href="javascript:setCity('彭水县')"/>
				    <area shape="rect" coords="412, 396, 460, 418" href="javascript:setCity('黔江区')"/>
				    <area shape="rect" coords="422, 476, 470, 498" href="javascript:setCity('酉阳土家族苗族自治县')"/>
				    <area shape="rect" coords="450, 523, 485, 542" href="javascript:setCity('秀山土家族苗族自治县')"/>
				    <area shape="rect" coords="180, 334, 215, 354" href="javascript:setCity('渝北区')"/>
				    <area shape="rect" coords="130, 304, 165, 324" href="javascript:setCity('合川区')"/>
				    <area shape="rect" coords="75,  290, 110, 312" href="javascript:setCity('潼南区')"/>
				    <area shape="rect" coords="103, 334, 140, 354" href="javascript:setCity('铜梁区')"/>
				    <area shape="rect" coords="118, 374, 150, 388" href="javascript:setCity('璧山区')"/>
				    <area shape="rect" coords="154, 383, 184, 397" href="javascript:setCity('重庆城区')"/>
				    <area shape="rect" coords="180, 418, 219, 437" href="javascript:setCity('巴南区')"/>
				    <area shape="rect" coords="180, 470, 219, 488" href="javascript:setCity('綦江区')"/>
				    <area shape="rect" coords="230, 438, 269, 457" href="javascript:setCity('南川区')"/>
				    <area shape="rect" coords="116, 446, 159, 466" href="javascript:setCity('江津区')">
				    <area shape="rect" coords=" 65, 369, 100, 383" href="javascript:setCity('大足区')"/>
				    <area shape="rect" coords=" 35, 389, 72 , 408" href="javascript:setCity('荣昌区')">
				    <area shape="rect" coords=" 80, 414, 117, 433" href="javascript:setCity('永川区')"/>
				  </map>
				</div>               
     </div>
 </div>	
					