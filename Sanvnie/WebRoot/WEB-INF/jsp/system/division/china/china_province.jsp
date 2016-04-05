<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/common/common.jspf" %>	
<script type="text/javascript" src="${pageContext.request.contextPath}/js/system/division/china/china_province.js"></script>

<script type="text/javascript">
	var dataSource=${dataSource};
	var province_name='${province.ch_name}';
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
                                            <h2>${province.ch_name}</h2>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-5">
                                        <dl class="dl-horizontal">
                                            <dt>中文名称：</dt> 
                                            <dd>${province.name}</dd>
                                            <dt>英文名称：</dt> 
                                            <dd>${province.en_name}</dd>
                                            <dt>简称：</dt> 
                                            <dd>${province.simple_name}</dd>
                                            <dt>别名：</dt> 
                                            <dd>${province.other_name}</dd>
                                            <dt>地理位置：</dt>
                                            <dd>${province.geography}</dd>
                                            <dt>气候：</dt>
                                            <dd>${province.climate}</dd>
                                            <dt>面积：</dt>
                                            <dd>${province.area}平方公里</dd>
                                            <dt>政府驻地：</dt>
                                            <dd>${province.gov_resident}</dd>
                                            <dt>行政代码：</dt>
                                            <dd>${province.strative_code}</dd>
                                            <dt>电话区号：</dt>
                                            <dd>${province.tel_code}</dd>
                                            <dt>邮政编码：</dt>
                                            <dd>${province.post_code}</dd>
                                            <dt>方言：</dt>
                                            <dd>${province.dialect}</dd>
                                        </dl>
                                    </div>
                                    <div class="col-lg-7" id="cluster_info">
                                        <dl class="dl-horizontal">

                                            <dt>机场：</dt> 
                                            <dd>${province.airport}</dd>
                                            <dt>火车站：</dt> 
                                            <dd>${province.train_port}</dd>
                                            <dt>旅游景点：</dt>
                                            <dd>${province.scenic_spot}</dd>
                                            <dt>车牌号：</dt>
                                            <dd>${province.plate}</dd>
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
                                               ${province.description}
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
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th>行政区</th>
                                                                    <th>行政代码</th>
                                                                    <th>电话区号</th>
                                                                    <th>邮政编码</th>
                                                                    <th>车牌代码</th>
                                                                    <th>面积</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            	<c:forEach items="${division_list}" var="city">
                                                            		<tr>
	                                                                    <td>
	                                                                        <span class="label label-primary"><i class="fa"></i><a href="javascript:toCity('${city.sid}')">${city.sname}</a></span>
	                                                                    </td>
	                                                                    <td>
	                                                                      	${city.strative_code}
	                                                                    </td>
	                                                                    <td>
	                                                                        ${city.tel_code}
	                                                                    </td>
	                                                                    <td>
	                                                                        ${city.post_code}
	                                                                    </td>
	                                                                    <td>
	                                                                       ${city.plate}
	                                                                    </td>
	                                                                    <td>
	                                                                    	${city.area}平方公里
	                                                                    </td>
                                                                	</tr>
                                                            	</c:forEach>
                                                            </tbody>
                                                        </table>
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
					