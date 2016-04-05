package com.lanyuan.mapper;

import java.util.List;
import java.util.Map;

import com.lanyuan.entity.ChineseDivision;
import com.lanyuan.entity.Division;
import com.lanyuan.mapper.base.BaseMapper;


public interface DivisionMapper extends BaseMapper{
	List<Division> queryDivisionByPid(Map<String,Object> map);

	ChineseDivision getDivisionById(Map<String, Object> map);

	List<Division> queryCityDivisionByPid(Map<String, Object> map);

	Division isSpecialDivision(Map<String, Object> map);

	Division getProvinceByCityId(Map<String, Object> map);
}
