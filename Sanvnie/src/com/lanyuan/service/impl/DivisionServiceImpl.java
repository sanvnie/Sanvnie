package com.lanyuan.service.impl;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.lanyuan.entity.ChineseDivision;
import com.lanyuan.entity.Division;
import com.lanyuan.mapper.DivisionMapper;
import com.lanyuan.service.DivisionService;

@Service(value="divisionService")
public class DivisionServiceImpl implements DivisionService{
	
	@Autowired
	private DivisionMapper divisionMapper;
	
	@Override
	public List<Division> queryDivisionByPid(String id) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("pid", id);
		return divisionMapper.queryDivisionByPid(map);
	}

	@Override
	public ChineseDivision getDivisionById(String id) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("id", id);
		return divisionMapper.getDivisionById(map);
	}

	@Override
	public Division isSpecialDivision(String id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		return divisionMapper.isSpecialDivision(map);
	}

	@Override
	public Division getProvinceByCity(String id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		return divisionMapper.getProvinceByCityId(map);
	}


}
