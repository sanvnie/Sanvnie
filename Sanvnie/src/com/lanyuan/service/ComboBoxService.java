package com.lanyuan.service;

import java.util.List;

import com.lanyuan.entity.ComboBox;

public interface ComboBoxService {
	public List<ComboBox> getByCode(String code);
}
