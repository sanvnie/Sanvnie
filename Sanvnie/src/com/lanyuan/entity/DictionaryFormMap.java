package com.lanyuan.entity;

import com.lanyuan.annotation.TableSeg;
import com.lanyuan.util.FormMap;



/**
 * dictionary实体表
 */
@TableSeg(tableName = "ly_dictionary", id="id")
public class DictionaryFormMap extends FormMap<String,Object>{
	private static final long serialVersionUID = -8426474769059911107L;
}
