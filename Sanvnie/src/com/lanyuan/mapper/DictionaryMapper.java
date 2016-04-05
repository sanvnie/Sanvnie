package com.lanyuan.mapper;

import java.util.List;

import com.lanyuan.entity.DictionaryFormMap;
import com.lanyuan.mapper.base.BaseMapper;


public interface DictionaryMapper extends BaseMapper{

	public List<DictionaryFormMap> findDictionaryPage(DictionaryFormMap dictionaryFormMap);
	
	public List<DictionaryFormMap> findDictionaryByAttributes(DictionaryFormMap dictionaryFormMap);
}
