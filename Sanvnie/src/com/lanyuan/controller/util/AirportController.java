package com.lanyuan.controller.util;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lanyuan.controller.index.BaseController;
import com.lanyuan.service.AirportService;


@Controller
@RequestMapping(value="/airport/")
public class AirportController extends BaseController{
	
	@Autowired
	private AirportService airportService;
	
	@RequestMapping("addAirport")
	public String addAirport(String pageNo){
		airportService.addAirport(pageNo);
		return "";
	}
}
