package com.lanyuan.controller.util;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanyuan.common.CommonCode;
import com.lanyuan.controller.index.BaseController;
import com.lanyuan.entity.ComboBox;
import com.lanyuan.service.ComboBoxService;
import com.lanyuan.service.LanguageService;
import com.lanyuan.util.Common;

@Controller
@RequestMapping(value="/language/")
public class LanguageController extends BaseController{
	@Autowired
	private LanguageService languageService;
	
	@Autowired
	private ComboBoxService comboBoxService;
	
	@RequestMapping(value="pinyin")
	public String toPingYin(Model model){
		return Common.BACKGROUND_PATH+"/system/language/pinyin";
	}
	
	@ResponseBody
	@RequestMapping(value="translatePinYin")
	public String translatePinYin(Model model,String chinese_text){
		return languageService.translatePinyin(chinese_text);
	}
	
	@RequestMapping(value="translation")
	public String toTranslation(Model model){
		List<ComboBox> list=comboBoxService.getByCode(CommonCode.TRANSLATION);
		model.addAttribute("list", list);
		return Common.BACKGROUND_PATH+"/system/language/translation";
	}
}
