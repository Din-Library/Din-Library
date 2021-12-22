package com.library.borrow_list;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.library.login.LoginDTO;


@Controller
public class BoListController {
	/* 
	 * 대출목록 
	 */
	@Autowired
	private SqlSession sqlSession;
	
	// 대출현황 
	@RequestMapping("/borrow_list")
	public String Bolist(HttpServletRequest request, Model mo) {
		
		//로그인 정보 가져와서 회원번호 저장
		HttpSession session = request.getSession();
		LoginDTO ldto = (LoginDTO)session.getAttribute("member");
		int mem_no = ldto.getMem_no();
		
		// 회원번호로 대출현황 조회
		BoListService boListService = sqlSession.getMapper(BoListService.class);
		ArrayList<BoListDTO> bo_list = boListService.bo_list(mem_no);
		mo.addAttribute("bo_list", bo_list);
		
		return "borrow_list";
	}
}

