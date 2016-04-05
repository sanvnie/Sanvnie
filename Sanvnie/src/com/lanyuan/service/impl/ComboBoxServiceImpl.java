package com.lanyuan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanyuan.entity.ComboBox;
import com.lanyuan.mapper.ComboBoxMapper;
import com.lanyuan.service.ComboBoxService;




@Service(value="comboBoxService")
public class ComboBoxServiceImpl implements ComboBoxService{
	
	@Autowired
	private ComboBoxMapper comboBoxMapper;

	public List<ComboBox> getByCode(String field) {
		List<ComboBox> comboBoxs = comboBoxMapper.getByField(field);
		return comboBoxs;
	}
}
