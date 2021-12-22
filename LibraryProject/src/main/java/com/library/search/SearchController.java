package com.library.search;



import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

import com.library.bebook.BeBookDTO;
import com.library.bebook.BeBookService;

@Controller
public class SearchController {
	/*
	 * 도서 검색
	 */
	
	// 신간 도서 목록
	@RequestMapping("/newbook")
	public ModelAndView newbook() {
		String url = "https://www.aladin.co.kr/ttb/api/ItemList.aspx?ttbkey=ttbwldbs3472110001&QueryType=ItemNewAll&MaxResults=10&start=1&SearchTarget=Book&output=xml&Version=20131101";
		int des_flag = 0; // description 태그 구분을 위한 flag
		ModelAndView mv = documentBuilder(url, des_flag);
		
		mv.setViewName("search");
		
		return mv;
	}
	
	// 검색 결과 목록
	@RequestMapping("/search_result")
	public ModelAndView search_result(HttpServletRequest request) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String search_type = request.getParameter("search_type");
		String search_value_encode = request.getParameter("search_value");
		String search_value = null;
		try {
			search_value = URLEncoder.encode(search_value_encode, "utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		StringBuilder urlBuilder = new StringBuilder("http://www.aladin.co.kr/ttb/api/ItemSearch.aspx?ttbkey=ttbwldbs3472110001&Query=");
		urlBuilder.append(search_value);
		urlBuilder.append("&QueryType=");
		urlBuilder.append(search_type);
		String url = urlBuilder.toString();
		
		int des_flag = 1; // description 태그 구분을 위한 flag
		ModelAndView mv =  documentBuilder(url, des_flag);
		mv.addObject("search_value", search_value_encode);
		mv.setViewName("search_result");
		return mv;
	}
	
	
	private static ModelAndView documentBuilder(String url, int des_flag) {
		ModelAndView mv = new ModelAndView();
		DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder dBuilder = null;
		try {
			dBuilder = dbFactory.newDocumentBuilder();
			org.w3c.dom.Document doc = dBuilder.parse(url);
			doc.getDocumentElement().normalize();
			org.w3c.dom.NodeList nList = doc.getElementsByTagName("item");
			
			String[] title = new String[nList.getLength()];
			String[] description = new String[nList.getLength()];
			String[] cover = new String[nList.getLength()];
			String[] author = new String[nList.getLength()];
			String[] isbn = new String[nList.getLength()];
			String[] categoryName = new String[nList.getLength()];
			String[] publisher = new String[nList.getLength()];
			String[] pubDate = new String[nList.getLength()];
			
			ArrayList<BeBookDTO> alist = new ArrayList<BeBookDTO>();
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
					cover[temp] = coverTag;
					author[temp] = authorTag;
					isbn[temp] = isbnTag;
					categoryName[temp] = categoryNameTag;
					publisher[temp] = publisherTag;
					pubDate[temp] = pubDateTag;
					
					if(des_flag == 0) { // 신간 도서 목록
						description[temp] = descriptionTag;
					}
					else if(des_flag == 1) { // 검색 결과 목록
						int idx = descriptionTag.indexOf("<br/>");
						description[temp] = descriptionTag.substring(idx+5);
					}
					
					alist.add(new BeBookDTO(isbnTag, titleTag, descriptionTag, coverTag, authorTag, categoryNameTag, publisherTag, pubDateTag));
					
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
