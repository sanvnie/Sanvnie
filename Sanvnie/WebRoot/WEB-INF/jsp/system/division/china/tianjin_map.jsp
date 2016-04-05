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
       <h4>天津市行政区划图</h4>
       <div id="container">
				  <div style="font-size:12px;margin-top:15px;margin-left:5px;">
				    <div style="margin-bottom:25px;margin-left:7px;position: relative;"> <img id="map" name="map" usemap="#m_map"  src="${pageContext.request.contextPath}/images/map/tianjin.png">
				      <div id="myzone" style="width:393px;position: absolute;left:150px;top:570px;display:none;">
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
				    <area shape="rect" coords="238, 208 , 280, 235" href="javascript:setCity('宝坻区')"/>
				    <area shape="rect" coords="295, 417, 350, 440" href="javascript:setCity('滨海新区')"/>
				    <area shape="rect" coords="140, 262, 189, 297" href="javascript:setCity('武清区')"/>
				    <area shape="rect" coords="175, 327, 224, 355" href="javascript:setCity('北辰区')"/>
				    <area shape="rect" coords="309, 277, 357, 307" href="javascript:setCity('宁河区')"/>
				    <area shape="rect" coords="235, 375, 278, 400" href="javascript:setCity('东丽区')">
				    <area shape="rect" coords="175, 375, 218, 395" href="javascript:setCity('天津城区')"/>
				    <area shape="rect" coords="160, 410, 213, 430" href="javascript:setCity('西青区')"/>
					<area shape="rect" coords="115, 473, 170, 505" href="javascript:setCity('静海区')"/>
					<area shape="rect" coords="258, 83 , 300, 110" href="javascript:setCity('蓟县')"/>
				  </map>
				</div>               
     </div>
 </div>	
					