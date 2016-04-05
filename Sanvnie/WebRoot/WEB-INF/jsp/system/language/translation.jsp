<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<script type="text/javascript" src="${pageContext.request.contextPath}/js/system/language/pinyin.js"></script>
	
<div class="col-lg-7">
         <div class="ibox float-e-margins">
                 <div class="ibox-content">
                      <div class="row">
                             <div class="col-sm-6 b-r">
                                        <p>欢迎使用翻译工具</p>
                                        <form role="form">
                                            <div class="form-group">
                                            	<textarea rows="5" cols="60" placeholder="请输入您要翻译的文字" id="input_text"></textarea>
                                            </div>
                                           	
                                           	<div class="hr-line-dashed"></div>
                                           	
                                           	<div class="form-group">
                                            	<input type="text" id="route"/>
                                            </div>
                                           	<div class="hr-line-dashed"></div>
                                           	
                                           	
                                           	<div class="form-group">
                                            <label class="col-sm-3 control-label">源语言</label>
                                            <div class="btn-group m-r">
												<button data-toggle="dropdown"
													class="btn btn-sm btn-default dropdown-toggle">
													<span class="dropdown-label">${list[0].text}</span> <span class="caret"></span>
												</button>
												<ul class="dropdown-menu dropdown-select">
													<c:forEach items="${list}" var="combobox" varStatus="i">	
													<c:choose>
													<c:when test="${i.first}">
													<li class=""><a href="#"><input type="radio" name="from_language" value="${combobox.value}" checked="checked">${combobox.text}</a></li>
													</c:when>
													<c:otherwise>
													<li class=""><a href="#"><input type="radio" name="from_language" value="${combobox.value}">${combobox.text}</a>
													</c:otherwise>
													</c:choose>
													</c:forEach>
												</ul>
											</div>
											</div>
											
											<div class="hr-line-dashed"></div>
											
											<div class="form-group">
                                            <label class="col-sm-3 control-label">目标语言</label>
                                            <div class="btn-group m-r">
												<button data-toggle="dropdown"
													class="btn btn-sm btn-default dropdown-toggle">
													<span class="dropdown-label">${list[0].text}</span><span class="caret"></span>
												</button>
												<ul class="dropdown-menu dropdown-select">
													<c:forEach items="${list}" var="combobox" varStatus="i"> 
													
													<c:choose>
													<c:when test="${i.first}">
													<li class=""><a href="#"><input type="radio" name="to_language" value="${combobox.value}" checked="checked">${combobox.text}</a></li>
													</c:when>
													<c:otherwise>
													<li class=""><a href="#"><input type="radio" name="to_language" value="${combobox.value}">${combobox.text}</a></li>
													</c:otherwise>
													</c:choose>
													</c:forEach>
												</ul>
											</div>
											</div>
											
											<div class="hr-line-dashed"></div>
											
                                            <div>
                                            	<a href="javascript:void(0)" class="btn btn-default" id="translate_btn">翻译</a>
                                            	<a href="javascript:void(0)" class="btn btn-default" id="addPort">添加港口</a>
                                            </div>
                                    </form>
                                    
                                    <div class="col-sm-6">
                                        <p>翻译结果</p>
                                        <textarea rows="8" cols="60" id="result_text"></textarea>
                                        
                                    </div>
                         </div>
                    </div>
             </div>
        </div>
</div>
					