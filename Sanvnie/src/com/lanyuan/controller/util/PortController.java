package com.lanyuan.controller.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lanyuan.controller.index.BaseController;
import com.lanyuan.service.PortService;

@Controller
@RequestMapping(value="/port/")
public class PortController extends BaseController{
	@Autowired
	private PortService portService;
	
	@RequestMapping(value="addPort")
	public void addPort(){
		portService.insertPortDescription();
	}
	
}
