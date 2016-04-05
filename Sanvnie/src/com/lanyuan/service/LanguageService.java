package com.lanyuan.service;

public interface LanguageService {
	
	/**
	 * 将中文转化为拼音
	 * @param chinese
	 * @return
	 */
	String translatePinyin(String chinese);
	
	/**
	 * 通过百度接口翻译
	 * @param content 需要翻译的内容
	 * @param from_language 源语言
	 * @param to_language 目标语言
	 * @return
	 */
	String translateFromBaiDu(String content,String from_language,String to_language);
}
