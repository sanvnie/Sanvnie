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
       <h4>上海市行政区划图</h4>
       <div id="container">
				  <div style="font-size:12px;margin-top:15px;margin-left:5px;">
				    <div style="margin-bottom:25px;margin-left:7px;position: relative;"> <img id="map" name="map" usemap="#m_map"  src="${pageContext.request.contextPath}/images/map/shanghai.png">
				      <div id="myzone" style="width:393px;position: absolute;left:120px;top:600px;display:none;">
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
				    <area shape="rect" coords="291, 137, 336, 163" href="javascript:setCity('崇明县')"/>
				    <area shape="rect" coords="277, 276, 338, 298" href="javascript:setCity('浦东新区')"/>
				    <area shape="rect" coords="207, 276, 255, 298" href="javascript:setCity('上海城区')"/>
				    <area shape="rect" coords="200, 221, 248, 243" href="javascript:setCity('宝山区')"/>
				    <area shape="rect" coords="297, 376, 358, 398" href="javascript:setCity('浦东新区')"/>
				    <area shape="rect" coords="242, 416, 295, 448" href="javascript:setCity('奉贤区')"/>
				    <area shape="rect" coords="172, 466, 225, 498" href="javascript:setProvince('金山区')"/>
				    <area shape="rect" coords="197, 326, 250, 358" href="javascript:setProvince('闵行区')"/>
				    <area shape="rect" coords="242, 416, 295, 448" href="javascript:setProvince('宝山区')"/>
				    <area shape="rect" coords="137, 227, 190, 258" href="javascript:setProvince('嘉定区')"/>
				    <area shape="rect" coords="87, 317, 140, 348" href="javascript:setProvince('青浦区')"/>
				    <area shape="rect" coords="127, 367, 180, 392" href="javascript:setProvince('松江区')"/>
				    <area shape="rect" coords="515, 496, 580, 518" href="javascript:setCity('洋山深水港')"/>
				  </map>
				</div>               
     </div>
 </div>	
					