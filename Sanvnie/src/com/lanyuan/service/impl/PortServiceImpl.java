package com.lanyuan.service.impl;

import java.io.IOException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanyuan.common.BaseCommon;
import com.lanyuan.entity.Port;
import com.lanyuan.mapper.PortMapper;
import com.lanyuan.service.PortService;

@Service(value="portService")
public class PortServiceImpl implements PortService{
	
	@Autowired
	private PortMapper portMapper;
	
	@Override
	public void addPort(String route) {
		try {
			//String url=BaseCommon.PORT_DATA_URL+"/"+route+"__gangkousou/";
			String url="http://gangkou.51240.com/南美东__gangkousou/";
			url=URLEncoder.encode(url,"UTF-8");
			Document document=Jsoup.connect(url).get();
			//Document document=Jsoup.parse(new URL("http://gangkou.51240.com/南美东__gangkousou/").openStream(), "UTF-8", "http://gangkou.51240.com/南美东__gangkousou/");
			Element element=document.getElementById("main_content");
			Elements trList=element.child(3).child(0).child(0).child(0).child(0).child(0).children();
			for (int i = 0; i < trList.size(); i++) {
					if (i!=0) {
						Element tr=trList.get(i);
						Port port=new Port();
						port.put("port_code", tr.child(0).html());
						port.put("port_name", tr.child(1).html());
						port.put("country", tr.child(2).html());
						port.put("route", tr.child(3).html());
						//查询国家英文名和港口介绍
						String detail_url=tr.child(0).child(0).attr("href");
						Document detailDocument=Jsoup.connect(BaseCommon.PORT_DATA_URL+detail_url).get();
						Element detailElement=detailDocument.getElementById("fcj_jg");
						Element detailTbody=detailElement.child(0).child(0).child(0).child(0).child(0);
						Elements detailTrList=detailTbody.children();
						String port_en_name=detailTrList.get(2).child(1).html();
						String country_en_name=detailTrList.get(4).child(1).html();
						String description=detailTrList.get(6).child(1).html();
						port.put("port_en_name", port_en_name);
						port.put("country_en_name", country_en_name);
						port.put("description", description);
						try {
							portMapper.addEntity(port);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insertPortDescription() {
//		Map paramMap=new HashMap<String, Object>();
//		paramMap.put("pageStart", 0);
//		paramMap.put("pageEnd", 1000);
//		List<Port> portList=portMapper.queryPortList(paramMap);
		
	}
	
	

}
