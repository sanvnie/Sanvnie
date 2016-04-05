package com.lanyuan.mapper;

import java.util.List;

import com.lanyuan.entity.Country;
import com.lanyuan.mapper.base.BaseMapper;


public interface CountryMapper extends BaseMapper{

	public List<Country> queryCountries(Country country);

	public void updateCountryCode(Country country);
	
}
