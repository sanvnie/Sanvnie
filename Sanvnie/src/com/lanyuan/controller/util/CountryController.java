package com.lanyuan.controller.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lanyuan.controller.index.BaseController;
import com.lanyuan.entity.Country;
import com.lanyuan.service.CountryService;

@Controller
@RequestMapping(value="/country/")
public class CountryController extends BaseController{
	
	@Autowired
	private CountryService countryService;
	
	@RequestMapping(value="updateCode")
	public void updateCountryCode(){
		Country country =new  Country();
		List<Country> countryList = countryService.queryCountry(country);
		for (Country temp :countryList) {
			String code = temp.getStr("tel_area_code");
			code=code.substring(1);
			code="00"+code;
			temp.set("tel_area_code", code);
			countryService.updateCountry(temp);
		}
	}
}
