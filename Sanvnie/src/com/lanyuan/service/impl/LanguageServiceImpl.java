package com.lanyuan.service.impl;

import java.io.IOException;

import org.springframework.stereotype.Service;

import com.lanyuan.common.BaseCommon;
import com.lanyuan.service.LanguageService;
import com.lanyuan.util.HttpUtil;
import com.lanyuan.util.PinYinUtil;

@Service(value="languageService")
public class LanguageServiceImpl implements LanguageService{

	@Override
	public String translatePinyin(String chinese) {
		return PinYinUtil.getPinyin(chinese);
	}

	@Override
	public String translateFromBaiDu(String content, String from_language,
			String to_language) {
		String url=BaseCommon.TRANSLATION_URL+"?client_id="+BaseCommon.APIKEY+"&q="+content+"&from="+from_language+"&to="+to_language;
		try {
			return HttpUtil.get(url);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void main(String[] args) {
		LanguageService languageService=new LanguageServiceImpl();
		String res=languageService.translateFromBaiDu("英语", "zh", "en");
		System.out.println(res);
	}

}
