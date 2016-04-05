<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/common/common.jspf" %>	
<script type="text/javascript" src="${pageContext.request.contextPath}/js/system/division/china/china_city.js"></script>
<script>
	var province_name='${province.name}';
	var province_id='${province.id}';
	var city_name='${city.ch_name}';
</script>

<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
#container{margin:auto auto;width:665px;}
#mylist td{line-height:21px;padding: 0,30px}
</style>	
<div class="col-lg-12">
    <div class="ibox float-e-margins">
		<div class="row">
                <div class="col-lg-7">
                    <div class="wrapper wrapper-content animated fadeInUp">
                        <div class="ibox">
                            <div class="ibox-content">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="m-b-md">
                                            <h2>${city.ch_name}</h2>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-5">
                                        <dl class="dl-horizontal">
                                            <dt>中文名称：</dt> 
                                            <dd>${city.name}</dd>
                                            <dt>英文名称：</dt> 
                                            <dd>${city.en_name}</dd>
                                            <c:if test="${city.simple_name!=null&&city.simple_name!=''}">
                                            	<dt>简称：</dt> 
                                            	<dd>${city.simple_name}</dd>
                                            </c:if>
                                            <c:if test="${city.other_name!=null&&city.other_name!=''}">
                                            	<dt>别名：</dt> 
                                           		<dd>${city.other_name}</dd>
                                            </c:if>   
                                            <dt>地理位置：</dt>
                                            <dd>${city.geography}</dd>
                                            <dt>气候：</dt>
                                            <dd>${city.climate}</dd>
                                            <dt>面积：</dt>
                                            <dd>${city.area}平方公里</dd>
                                            <dt>政府驻地：</dt>
                                            <dd>${city.gov_resident}</dd>
                                            <dt>行政代码：</dt>
                                            <dd>${city.strative_code}</dd>
                                            <dt>电话区号：</dt>
                                            <dd>${city.tel_code}</dd>
                                            <dt>邮政编码：</dt>
                                            <dd>${city.post_code}</dd>
                                            
                                        </dl>
                                    </div>
                                    <div class="col-lg-7" id="cluster_info">
                                        <dl class="dl-horizontal">
											<dt>方言：</dt>
                                            <dd>${city.dialect}</dd>
                                            <c:if test="${city.airport!=null&&city.airport!=''}">
                                            	<dt>机场：</dt> 
                                            	<dd>${city.airport}</dd>
                                            </c:if>	
                                            <c:if test="${city.train_port!=null&&city.train_port!=''}">
                                            	<dt>火车站：</dt> 
                                            	<dd>${city.train_port}</dd>
                                            </c:if>
                                            <dt>旅游景点：</dt>
                                            <dd>${city.scenic_spot}</dd>
                                            <c:if test="${city.plate!=null&&city.plate!=''}">
                                            	<dt>车牌号：</dt>
                                            	<dd>${city.plate}</dd>
                                            </c:if>
                                            
                                            <c:if test="${!empty flag_list}">
	                                            <c:forEach items="${flag_list}" var="bean">
	                                            	<dt>${bean.title}</dt> 
                                            		<dd>${bean.content}</dd>
	                                            </c:forEach>
                                            </c:if>
											<c:if test="${!empty most_list}">
												<c:forEach items="${most_list}" var="bean">
													<dt>${bean.title}</dt> 
	                                            	<dd>${bean.content}</dd>
												</c:forEach>
											</c:if>
                                        </dl>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <dl class="dl-horizontal">
                                            <dt>基本介绍</dt>
                                            <dd>
                                               ${city.description}
                                            </dd>
                                        </dl>
                                    </div>
                                </div>
                                <div class="row m-t-sm">
                                    <div class="col-lg-12">
                                        <div class="panel blank-panel">
                                            <div class="panel-heading">
                                                <div class="panel-options">
                                                    <ul class="nav nav-tabs">
                                                        <li class=""><a href="#tab-2" data-toggle="tab">行政区划</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="panel-body">
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="tab-2">
                                                         
                                                        <div class="wrapper wrapper-content animated fadeInRight">
                											<div class="row">
											                    <c:forEach items="${division_list}" var="county">
											                    	 <div class="col-lg-4">
											                        <div class="contact-box">
											                            <a href="profile.html">
											                                <div class="col-sm-8">
											                                    <h3>${county.sname}</h3>
											                                    <c:if test="${isSpecial==0}">
											                                    	<p><i class="fa fa-map-marker"><abbr title="Phone">辖区:</abbr></i></p>
											                                    </c:if>
											                                	<c:forEach items="${county.childDivisionList}" var="street" varStatus="index">
																					<c:choose>
																						<c:when test="${!index.last}">
																							${street.sname},
																						</c:when>
																						<c:otherwise>
																							${street.sname}
																						</c:otherwise>
																					</c:choose>
											                                	</c:forEach>
											                                </div>
											                                <div class="clearfix"></div>
											                            </a>
											                        </div>
											                    </div>
											                    </c:forEach>
                											</div>
            											</div>
            										
            											 <!-- 
            											 <ul class="tag-list" style="padding: 0">
					                                        <c:forEach items="${division_list}" var="county">
					                                        	<li>
					                                        		<a href="javascript:void(0)"><i class="fa fa-tag"></i>${county.sname}</a>
					                                        	</li>
					                                        </c:forEach>
                                   						 </ul>
            											 -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
               <c:if test="${province.pid==1}">
               		 <jsp:include page="beijing_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==2}">
               		 <jsp:include page="tianjin_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==3}">
               		 <jsp:include page="hebei_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==4}">
               		 <jsp:include page="shanxi_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==5}">
               		 <jsp:include page="neimenggu_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==6}">
               		 <jsp:include page="liaoning_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==7}">
               		 <jsp:include page="jilin_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==8}">
               		 <jsp:include page="heilongjiang_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==9}">
               		 <jsp:include page="shanghai_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==10}">
               		 <jsp:include page="jiangsu_map.jsp"></jsp:include>
               </c:if>
                <c:if test="${province.pid==11}">
               		 <jsp:include page="zhejiang_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==12}">
               		 <jsp:include page="anhui_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==13}">
               		 <jsp:include page="fujian_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==14}">
               		 <jsp:include page="jiangxi_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==15}">
               		 <jsp:include page="shandong_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==16}">
               		 <jsp:include page="henan_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==17}">
               		 <jsp:include page="hubei_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==18}">
               		 <jsp:include page="hunan_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==19}">
               		 <jsp:include page="guangdong_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==20}">
               		 <jsp:include page="guangxi_map.jsp"></jsp:include>
               </c:if> 
               <c:if test="${province.pid==21}">
               		 <jsp:include page="hainan_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==22}">
               		 <jsp:include page="chongqing_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==23}">
               		 <jsp:include page="sichuan_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==24}">
               		 <jsp:include page="guizhou_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==25}">
               		 <jsp:include page="yunnan_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==26}">
               		 <jsp:include page="xizang_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==27}">
               		 <jsp:include page="shaanxi_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==28}">
               		 <jsp:include page="gansu_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==29}">
               		 <jsp:include page="qinghai_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==30}">
               		 <jsp:include page="ningxia_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==31}">
               		 <jsp:include page="xinjiang_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==32}">
               		 <jsp:include page="taiwan_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==33}">
               		 <jsp:include page="xianggang_map.jsp"></jsp:include>
               </c:if>
               <c:if test="${province.pid==34}">
               		 <jsp:include page="aomen_map.jsp"></jsp:include>
               </c:if>
            </div>
    </div>
</div>
					