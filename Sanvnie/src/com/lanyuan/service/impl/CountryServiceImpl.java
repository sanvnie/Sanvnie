package com.lanyuan.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanyuan.entity.Country;
import com.lanyuan.mapper.CountryMapper;
import com.lanyuan.service.CountryService;

@Service(value="countryService")
public class CountryServiceImpl implements CountryService{
	
	@Autowired
	private CountryMapper countryMapper;

	@Override
	public List<Country> queryCountry(Country country) {
		return countryMapper.queryCountries(country);
	}

	@Override
	public void updateCountry(Country country) {
		countryMapper.updateCountryCode(country);
	}
}
