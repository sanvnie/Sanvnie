package com.lanyuan.mapper;

import java.util.List;

import com.lanyuan.entity.Airport;
import com.lanyuan.mapper.base.BaseMapper;


public interface AirportMapper extends BaseMapper{

	public List<Airport> findAirportPage(Airport airport);

}
