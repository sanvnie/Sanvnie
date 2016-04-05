package com.lanyuan.controller.util;


import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.lanyuan.controller.index.BaseController;
import com.lanyuan.entity.ChineseDivision;
import com.lanyuan.entity.Division;
import com.lanyuan.entity.Title_Content;
import com.lanyuan.service.DivisionService;
import com.lanyuan.util.Common;

@Controller
@RequestMapping(value="/division/")
public class DivisionController extends BaseController{
	@Autowired
	private DivisionService divisionService;
	
	@RequestMapping(value="china_map")
	public String chinaMap(Model model){
		return Common.BACKGROUND_PATH+"/system/division/china/china_map";
	}
	
	@RequestMapping(value="china_province")
	public String chinaProvince(Model model,String id){
		//获取该省的下辖行政区
		List<Division> list=divisionService.queryDivisionByPid(id);
		JSONArray arr = new JSONArray();
		for (int i = 0; i < list.size(); i++) {
			Division division=list.get(i);
			Division jsonDivision = new Division();
			jsonDivision.put("name", division.get("sname"));
			jsonDivision.put("id", division.get("sid"));
			JSONObject jsonObject = JSONObject.fromObject(jsonDivision);
			arr.add(jsonObject);
		}
		ChineseDivision province = divisionService.getDivisionById(id);
		String flag = (String) province.get("division_flag");
		String most = (String) province.get("division_most");
		List<Title_Content> flag_list = dealFlag(flag);
		List<Title_Content> most_list = dealFlag(most);
		model.addAttribute("dataSource", arr);
		model.addAttribute("division_list", list);
		model.addAttribute("province", province);
		model.addAttribute("flag_list", flag_list);
		model.addAttribute("most_list", most_list);
		return Common.BACKGROUND_PATH+"/system/division/china/china_province";
	}
	
	@RequestMapping(value="china_city")
	public String chinaCity(Model model,String id){
		//获取该市的下辖行政区（地级市：县（市）、区，直接市、特别行政区：区）
		List<Division> list=divisionService.queryDivisionByPid(id);
		List<Division> newList=new ArrayList<Division>();
		for(Division division :list){
			Integer sid=(Integer) division.get("sid");
			List<Division> childDivisionList = divisionService.queryDivisionByPid(String.valueOf(sid));
			//division.setChildDivisionList(childDivisionList);
			division.set("childDivisionList", childDivisionList);
			newList.add(division);
		}
		ChineseDivision city = divisionService.getDivisionById(id);
		//通过该地级行政区ID判断是否为直辖市或特别行政区和台湾省的辖区
		Division  divison =divisionService.isSpecialDivision(id);
		//通过城市ID获取该城市所在省份的Division信息
		Division province = divisionService.getProvinceByCity(id);
		String flag = (String) city.get("division_flag");
		String most = (String) city.get("division_most");
		List<Title_Content> flag_list = dealFlag(flag);
		List<Title_Content> most_list = dealFlag(most);
		model.addAttribute("division_list", newList);
		model.addAttribute("city", city);
		model.addAttribute("province", province);
		model.addAttribute("flag_list", flag_list);
		model.addAttribute("most_list", most_list);
		model.addAttribute("isSpecial", divison.get("isSpecial"));
		return Common.BACKGROUND_PATH+"/system/division/china/china_city";
	}
	
	//处理省标志（省花、省树、省鸟等）（之最和主要河流等）
	private List<Title_Content> dealFlag(String flag){
		List<Title_Content> list=new ArrayList<Title_Content>();
		if (flag!=null&&flag.length()>0) {
			if (flag.indexOf("，")>0) {
				String[] flagArr=flag.split("，");
				for (int i = 0; i < flagArr.length; i++) {
					String temp = flagArr[i];
					String title = temp.substring(0, temp.indexOf("：")+1);
					String content = temp.substring(temp.indexOf("：")+1);
					Title_Content title_content = new Title_Content();
					title_content.setTitle(title);
					title_content.setContent(content);
					list.add(title_content);
				}
			}else{
				String title = flag.substring(0, flag.indexOf("：")+1);
				String content = flag.substring(flag.indexOf("：")+1);
				Title_Content title_content = new Title_Content();
				title_content.setTitle(title);
				title_content.setContent(content);
				list.add(title_content);
			}
		}
		return list;
	}
	
}
