<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/system/language/pinyin.js"></script>
	
                    <div class="col-lg-7">
                        <div class="ibox float-e-margins">
                            <div class="ibox-content">
                                <div class="row">
                                    <div class="col-sm-6 b-r"
                                        <p>欢迎使用汉语转拼音工具</p>
                                        <form role="form">
                                            <div class="form-group">
                                            	<textarea rows="3" cols="50" placeholder="请输入您要转化的文字" id="chinese_text"></textarea>
                                            </div>
                                            <div>
                                            	<a href="javascript:void(0)" class="btn btn-default" id="translate_btn">转化</a>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="col-sm-6">
                                        <p>转化结果</p>
                                        <textarea rows="3" cols="50" id="pinyin_text"></textarea>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
