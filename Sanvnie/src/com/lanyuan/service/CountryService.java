package com.lanyuan.service;

import java.util.List;

import com.lanyuan.entity.Country;

public interface CountryService {
	/**
	 * 根据查询条件获取国家信息
	 * @param param
	 * @return
	 */
	List<Country> queryCountry(Country country);
	
	/**
	 * 修改国家信息
	 * @param temp
	 */
	void updateCountry(Country temp);
}
