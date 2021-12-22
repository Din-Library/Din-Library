package com.team.library;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;



@Controller
public class HomeController {
	/*
	 * 메인 화면 베스트 셀러 목록 출력
	 */
	
	@RequestMapping("/book")
	public ModelAndView book() {
		//String url = "http://www.aladin.co.kr/ttb/api/ItemSearch.aspx?ttbkey=ttbwldbs3472110001&Query=aladdin&QueryType=Title";
		String url = "https://www.aladin.co.kr/ttb/api/ItemList.aspx?ttbkey=ttbwldbs3472110001&QueryType=Bestseller&MaxResults=8&start=1&SearchTarget=Book&output=xml&Version=20131101";
		ModelAndView mv = new ModelAndView();
		DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder dBuilder;
		try {
			dBuilder = dbFactory.newDocumentBuilder();
			org.w3c.dom.Document doc = dBuilder.parse(url);
			doc.getDocumentElement().normalize();
			//System.out.println("Root element : " + doc.getDocumentElement().getNodeName());
			org.w3c.dom.NodeList nList = doc.getElementsByTagName("item");
			String[] title = new String[nList.getLength()];
			String[] description = new String[nList.getLength()];
			String[] cover = new String[nList.getLength()];
			String[] author = new String[nList.getLength()];
			String[] isbn = new String[nList.getLength()];
			String[] categoryName = new String[nList.getLength()];
			String[] publisher = new String[nList.getLength()];
			String[] pubDate = new String[nList.getLength()];
			for(int temp=0; temp<nList.getLength(); temp++) {
				Node nNode = nList.item(temp);
				if(nNode.getNodeType() == Node.ELEMENT_NODE) {
					org.w3c.dom.Element eElement = (org.w3c.dom.Element) nNode;
					String titleTag = getTagValue("title", eElement);
					String descriptionTag = getTagValue("description", eElement);
					String coverTag = getTagValue("cover", eElement);
					String authorTag = getTagValue("author", eElement);
					String isbnTag = getTagValue("isbn", eElement);
					String categoryNameTag = getTagValue("categoryName", eElement);
					String publisherTag = getTagValue("publisher", eElement);
					String pubDateTag = getTagValue("pubDate", eElement);
					
					title[temp] = titleTag;
					description[temp] = descriptionTag;
					cover[temp] = coverTag;
					author[temp] = authorTag;
					isbn[temp] = isbnTag;
					categoryName[temp] = categoryNameTag;
					publisher[temp] = publisherTag;
					pubDate[temp] = pubDateTag;
					//System.out.println(cover[temp]);
				}
			}
			mv.addObject("title", title);
			mv.addObject("description", description);
			mv.addObject("cover", cover);
			mv.addObject("author", author);
			mv.addObject("isbn", isbn);
			mv.addObject("categoryName", categoryName);
			mv.addObject("publisher", publisher);
			mv.addObject("pubDate", pubDate);
			mv.setViewName("index");
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	private static String getTagValue(String tag, org.w3c.dom.Element eElement) {
		org.w3c.dom.NodeList nList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		
		Node nValue = (Node) nList.item(0);
		if(nValue == null) {
			return null;
		}
		return nValue.getNodeValue();
	}
}


