package com.lanyuan.controller.system;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanyuan.mapper.DictionaryMapper;
import com.lanyuan.annotation.SystemLog;
import com.lanyuan.controller.index.BaseController;
import com.lanyuan.entity.DictionaryFormMap;
import com.lanyuan.entity.ResFormMap;
import com.lanyuan.exception.SystemException;
import com.lanyuan.plugin.PageView;
import com.lanyuan.util.Common;


@Controller
@RequestMapping("/dictionary/")
public class DictionaryController extends BaseController {
	@Inject
	private DictionaryMapper dictionaryMapper;
	
	@RequestMapping("list")
	public String listUI(Model model) throws Exception {
		List<ResFormMap> resList=findByRes();
		model.addAttribute("res", resList);
		return Common.BACKGROUND_PATH + "/system/dictionary/list";
	}

	@ResponseBody
	@RequestMapping("findByPage")
	public PageView findByPage( String pageNow,
			String pageSize) throws Exception {
		DictionaryFormMap dictionaryFormMap = getFormMap(DictionaryFormMap.class);
		dictionaryFormMap=toFormMap(dictionaryFormMap, pageNow, pageSize);
        pageView.setRecords(dictionaryMapper.findDictionaryPage(dictionaryFormMap));
        return pageView;
	}

	@RequestMapping("addUI")
	public String addUI(Model model) throws Exception {
		return Common.BACKGROUND_PATH + "/system/dictionary/add";
	}

	@ResponseBody
	@RequestMapping("addEntity")
	@SystemLog(module="系统管理",methods="数据字典-新增数据字典")//凡需要处理业务逻辑的.都需要记录操作日志
	@Transactional(readOnly=false)//需要事务操作必须加入此注解
	public String addEntity(String txtGroupsSelect){
		try {
			DictionaryFormMap dictionaryFormMap = getFormMap(DictionaryFormMap.class);
			dictionaryMapper.addEntity(dictionaryFormMap);//新增后返回新增信息
		} catch (Exception e) {
			 throw new SystemException("添加账号异常");
		}
		return "success";
	}

	@ResponseBody
	@RequestMapping("deleteEntity")
	@Transactional(readOnly=false)//需要事务操作必须加入此注解
	@SystemLog(module="系统管理",methods="数据字典-删除数据字典")//凡需要处理业务逻辑的.都需要记录操作日志
	public String deleteEntity() throws Exception {
		String[] ids = getParaValues("ids");
		for (String id : ids) {
			dictionaryMapper.deleteByAttribute("id", id, DictionaryFormMap.class);
		}
		return "success";
	}

	@RequestMapping("editUI")
	public String editUI(Model model) throws Exception {
		String id = getPara("id");
		if(Common.isNotEmpty(id)){
			model.addAttribute("dictionary", dictionaryMapper.findbyFrist("id", id, DictionaryFormMap.class));
		}
		return Common.BACKGROUND_PATH + "/system/dictionary/edit";
	}

	@ResponseBody
	@RequestMapping("editEntity")
	@Transactional(readOnly=false)//需要事务操作必须加入此注解
	@SystemLog(module="系统管理",methods="数据字典-修改数据字典")//凡需要处理业务逻辑的.都需要记录操作日志
	public String editEntity() throws Exception {
		DictionaryFormMap dictionaryFormMap = getFormMap(DictionaryFormMap.class);
		dictionaryMapper.editEntity(dictionaryFormMap);
		return "success";
	}
	/**
	 * 验证代码或代码描述是否在同一字段下存在
	 */
	@RequestMapping("isExist")
	@ResponseBody
	public boolean isExist(String code,String codeDesc,String field) {
		DictionaryFormMap dictionaryFormMap = new DictionaryFormMap();
		dictionaryFormMap.set("code", code);
		dictionaryFormMap.set("codeDesc", codeDesc);
		dictionaryFormMap.set("field",field);
		List<DictionaryFormMap> res = dictionaryMapper.findDictionaryByAttributes(dictionaryFormMap);
		if(res.size()>0){
			return false;
		}else{
			return true;
		}
	}
	
}