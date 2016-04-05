package junit.test;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.lanyuan.common.BaseCommon;
import com.lanyuan.entity.Port;
import com.lanyuan.util.FileUtil;

public class Test {
	public static void main(String[] args) {
		try {
			
			Document document=Jsoup.connect("http://gangkou.51240.com/中亚地区__gangkousou/").get();
			//Document document=Jsoup.parse(new URL("http://gangkou.51240.com/南美东__gangkousou/").openStream(), "GBK", "http://gangkou.51240.com/南美东__gangkousou/");
			Element element=document.getElementById("main_content");
			Elements trList=element.child(3).child(0).child(0).child(0).child(0).child(0).children();
			//System.out.println(trList.size()+"个港口");
			for (int i = 0; i < trList.size(); i++) {
				if (i!=0) {
					Element tr=trList.get(i);
					Port port=new Port();
					port.put("port_code", dealABlankStr(tr.child(0).html()));
					port.put("port_name", tr.child(1).html());
					//查询国家英文名和港口介绍
					String detail_url=tr.child(0).child(0).attr("href");
					Document detailDocument=Jsoup.connect(BaseCommon.PORT_DATA_URL+detail_url).get();
					Element detailElement=detailDocument.getElementById("fcj_jg");
					Element detailTbody=detailElement.child(0).child(0).child(0).child(0).child(0);
					Elements detailTrList=detailTbody.children();
					String description=dealHtml(detailTrList.get(6).child(1).html());
					if(description!=null&&description.length()>0){
						StringBuffer sql=new StringBuffer("update ly_port set description='");
						sql.append(description).append("'");
						sql.append(" where port_code='");
						sql.append(port.get("port_code"));
						sql.append("';").append("\r\n");
						FileUtil.appendContentToTxt(sql.toString(), "e://c.txt");
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
	
	public static String dealSpanStr(String str){
		if(str!=null){
			str=str.replaceAll("<span>","");
			str=str.replaceAll("</span>", "");
		}
		return str;
	}
	public static String dealHtml(String input) {
		if (input == null || input.trim().equals("")) { return ""; } // 去掉所有html元素, 
		String str = input.replaceAll("\\&[a-zA-Z]{1,10};", "").replaceAll( "<[^>]*>", "");
		str = str.replaceAll("[(/>)<]", ""); 
	
		str = str.substring(0, str.length());
		
		return str;
		
	}
}
