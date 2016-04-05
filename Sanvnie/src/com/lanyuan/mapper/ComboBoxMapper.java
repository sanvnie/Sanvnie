package com.lanyuan.mapper;

import java.util.List;

import com.lanyuan.entity.ComboBox;
import com.lanyuan.mapper.base.BaseMapper;

public interface ComboBoxMapper extends BaseMapper{
	List<ComboBox> getByField(String field);
}
