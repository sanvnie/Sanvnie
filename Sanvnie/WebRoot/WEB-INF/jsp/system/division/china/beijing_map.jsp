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
       <h4>北京市行政区划图</h4>
       <div id="container">
				  <div style="font-size:12px;margin-top:15px;margin-left:5px;">
				    <div style="margin-bottom:25px;margin-left:7px;position: relative;"> <img id="map" name="map" usemap="#m_map"  src="${pageContext.request.contextPath}/images/map/beijing.png" alt="">
				      <div id="myzone" style="width:393px;position: absolute;left:170px;top:500px;display:none;">
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
				    <area shape="rect" coords="420, 170, 460, 190" href="javascript:setCity('密云区')"/>
				    <area shape="rect" coords="429, 241, 473, 273" href="javascript:setCity('平谷区')"/>
				    <area shape="rect" coords="225, 165, 270, 191" href="javascript:setCity('延庆区')"/>
				    <area shape="rect" coords="310, 125, 350, 150" href="javascript:setCity('怀柔区')"/>
				    <area shape="rect" coords="345, 248, 380, 278" href="javascript:setCity('顺义区')"/>
				    <area shape="rect" coords="258, 314, 305, 336" href="javascript:setCity('北京城区')"/>
				    <area shape="rect" coords="346, 347, 379, 369" href="javascript:setCity('通州区')"/>
				    <area shape="rect" coords="290, 393, 335, 413" href="javascript:setCity('大兴区')"/>
				    <area shape="rect" coords="138, 300, 188, 331" href="javascript:setCity('门头沟区')">
				    <area shape="rect" coords="224,243,270,265" href="javascript:setCity('昌平区')"/>
				    <area shape="rect" coords="148, 370, 198, 401" href="javascript:setCity('房山区')">
				  </map>
				</div>               
     </div>
 </div>	
					