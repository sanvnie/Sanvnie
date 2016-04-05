package junit.test;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.lanyuan.util.FileUtil;

/**
 * 抓取世界各国的标志（国花、国树、国鸟、国石）【还可以加国兽等】
 * @author Lyc
 *
 */
public class CatchCountryFlag {
	private static String CONTENT_URL="http://www.fengsuwang.com/yiyu/waisu";//起始页6414，尾页 6613
	private static String PAGE_URL="http://www.fengsuwang.com/yiyu/";//分页起始URL
	private void catchCountryFlag(){
		for (int i = 6415; i < 6455; i++) {
			String url=CONTENT_URL+i+".asp";
			Map<String,Object> country_map=new HashMap<String, Object>();
			try {
				Document document=Jsoup.connect(url).get();
				if (document!=null) {
					Elements elements=document.getElementsByTag("strong");
					for (Element element : elements) {
						country_map=dealElement(element, country_map);
					}
					//有分页的情况
					Elements pageElements=document.getElementsByClass("Page");
					if (pageElements!=null) {
						Element pageElement=pageElements.first();
						//获取所欲的分页链接
						if(pageElement!=null){
							Elements fenyeLinkElements=pageElement.getElementsByTag("a");
							for(Element singlePage:fenyeLinkElements){
								String href=singlePage.attr("href");
								Document singleDocument = Jsoup.connect(PAGE_URL+href).get();
								if (singleDocument!=null) {
									Elements singleElements=singleDocument.getElementsByTag("strong");
									for (Element element:singleElements) {
										country_map = dealElement(element, country_map);
									}
								}
							}
						}
					}	
				}
				if (!country_map.isEmpty()) {
					Element titleElement=document.getElementsByClass("title").first();
					String h1String=titleElement.children().first().html();//   马达加斯加国旗/国徽/国歌/国花/国树
					String country = h1String.substring(0,h1String.indexOf("/")-2);
					country_map.put("country", country);
				}
				String sql = dealSql(country_map);
				if (sql!=null) {
					FileUtil.appendContentToTxt(sql, "e://m.txt");
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	private Map<String, Object> dealElement(Element element,Map<String, Object> country_map){
		
		if (element.html().indexOf("国花")!=-1) {
			String flower="";
			try {
				flower = element.html().substring(element.html().indexOf("国花")+3);
			} catch (Exception e) {
				flower = element.parent().html();
			}
			country_map.put("flower",flower);
		}
		if(element.html().indexOf("国树")!=-1){
			String tree="";
			try {
				tree = element.html().substring(element.html().indexOf("国树")+3);
			} catch (Exception e) {
				tree = element.parent().html(); 
			}
			country_map.put("tree", tree);
		}
		if(element.html().indexOf("国鸟")!=-1){
			String bird="";
			try {
				bird = element.html().substring(element.html().indexOf("国鸟")+3);
			} catch (Exception e) {
				bird = element.parent().html();
			}
			country_map.put("bird", bird);
		}
		if(element.html().indexOf("国石")!=-1){
			String stone="";
			try {
				stone = element.html().substring(element.html().indexOf("国石")+3);
			} catch (Exception e) {
				stone = element.parent().html();
			}
			country_map.put("stone", stone);
		}
		return country_map;
	}
	
	private String dealSql(Map<String, Object> map){
		if(!map.isEmpty()){
			StringBuffer sb = new StringBuffer("update ly_country lc set ");
			if (map.containsKey("flower")) {
				sb.append("lc.flower = '").append(map.get("flower")).append("',");
			}
			if (map.containsKey("tree")) {
				sb.append("lc.tree = '").append(map.get("tree")).append("',");
			}
			if (map.containsKey("bird")) {
				sb.append("lc.bird= '").append(map.get("bird")).append("',");
			}
			if (map.containsKey("stone")) {
				sb.append("lc.stone = '").append(map.get("stone")).append("',");
			}
			sb.append("where lc.name = '").append(map.get("country")).append("';").append("\r\n");
			return sb.toString();
		}
		return null;
	}
	
	public static void main(String[] args) {
		CatchCountryFlag cf = new CatchCountryFlag();
		cf.catchCountryFlag();
	}
}
