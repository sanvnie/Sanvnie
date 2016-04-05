package com.lanyuan.entity;

import com.lanyuan.annotation.TableSeg;
import com.lanyuan.util.FormMap;

/**
 * 世界机场
 */
@TableSeg(id="id",tableName="ly_airport")
public class Airport extends FormMap<String, Object>{
	private static final long serialVersionUID = -385345115099515948L;
}
