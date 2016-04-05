package com.lanyuan.mapper;

import java.util.List;
import java.util.Map;

import com.lanyuan.entity.Port;
import com.lanyuan.mapper.base.BaseMapper;


public interface PortMapper extends BaseMapper{

	public List<Port> findPortPage(Port port);
	
	public List<Port> queryPortList(Map<String, Object> map);

}
