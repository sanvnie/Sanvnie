package com.lanyuan.service;

import java.util.List;

import com.lanyuan.entity.ChineseDivision;
import com.lanyuan.entity.Division;

public interface DivisionService {
	/**
	 * 通过父ID获取该行政区下辖的所有行政区
	 * @param id
	 * @return
	 */
	List<Division> queryDivisionByPid(String id);
	
	/**
	 * 通过行政区划ID获取该行政区划的信息
	 * @param id
	 * @return
	 */
	ChineseDivision getDivisionById(String id);
	
	/**
	 * 通过id获取某个行政编制信息用来判断是否是特别行政区或直辖市或台湾省
	 * @param id
	 * @return
	 */
	Division isSpecialDivision(String id);
	
	/**
	 * 通过城市ID获取该城市所在的省份信息
	 * @param id
	 * @return
	 */
	Division getProvinceByCity(String id);
	
	
}
