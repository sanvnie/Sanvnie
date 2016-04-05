package com.lanyuan.entity;

import com.lanyuan.annotation.TableSeg;
import com.lanyuan.util.FormMap;

/**
 * 世界各国信息
 */
@TableSeg(id="id",tableName="ly_country")
public class Country extends FormMap<String, Object>{
	private static final long serialVersionUID = 7612645859426909242L;
}
