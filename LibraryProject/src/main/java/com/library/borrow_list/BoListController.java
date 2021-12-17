package com.library.borrow_list;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class BoListController {
	/* 
	 * 대출목록 
	 */
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/borrow_list")
	public String Bolist(HttpServletRequest request, Model mo) {
		int mem_no = Integer.parseInt(request.getParameter("mem_no"));
		BoListService boListService = sqlSession.getMapper(BoListService.class);
		ArrayList<BoListDTO> bo_list = boListService.bo_list(mem_no);
		mo.addAttribute("bo_list", bo_list);
		
		return "borrow_list";
	}
}
