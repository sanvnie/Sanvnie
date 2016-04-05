package com.lanyuan.service.impl;

import java.io.IOException;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanyuan.common.BaseCommon;
import com.lanyuan.entity.Airport;
import com.lanyuan.mapper.AirportMapper;
import com.lanyuan.service.AirportService;

@Service("airportService")
public class AirportServiceImpl implements AirportService{
	
	@Autowired
	private AirportMapper airportMapper;
	
	@Override
	public void addAirport(String pageNo) {
			Document document=null;
			try {
				document = Jsoup.connect(BaseCommon.AIRPORT_DATA_URL+pageNo).get();
				Elements elements=document.getElementsByClass("tdbg");
				for (int j = 0; j < elements.size(); j++) {
					if(j!=0){
						Element tr=elements.get(j);
						Elements tdList=tr.children();
						Airport airport=new Airport();
						
						airport.put("city", dealABlankStr(tdList.get(0).html()).substring(6));
						airport.put("country", dealABlankStr(tdList.get(2).html()));
						airport.put("country_code",tdList.get(3).html());
						airport.put("three_number_code", tdList.get(1).html());
						airport.put("four_number_code", tdList.get(4).html());
						airport.put("airport_name", tdList.get(5).html().substring(6));
						airport.put("airport_en_name", tdList.get(6).html().substring(6));
						try {
							airportMapper.addEntity(airport);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				}
			} catch (IOException e) {
				e.printStackTrace();
			}

	}
	
	/**
	 * 去除网页中的a标签
	 * @return
	 */
	public static String dealABlankStr(String str){
		if(str!=null){
			str=str.replaceAll("<a href[^>]*>", "");  
			str=str.replaceAll("</a>", ""); 
		}
		return str;
	}
	

}
