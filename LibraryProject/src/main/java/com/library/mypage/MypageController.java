package com.library.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MypageController {
	/* 
	 * 마이페이지 
	 */
	@Autowired
	private SqlSession sqlSession;
	
/*
	@RequestMapping("/mypage")
	public String Mypage(HttpServletRequest request, Model mo) {
		String mem_name = request.getParameter("mem_name");
		MypageService mypageService = sqlSession.getMapper(MypageService.class);
		ArrayList<MypageDTO> pagelist = mypageService.mypage_act(mem_name);
		mo.addAttribute("pagelist", pagelist);
		return "mypage";
	}
	
*/	
	
	@RequestMapping("/mypage")
	public String Mypage(HttpServletRequest request, Model mo) {
		int mem_no = Integer.parseInt(request.getParameter("mem_no"));
		MypageService mypageService = sqlSession.getMapper(MypageService.class);
		ArrayList<MypageDTO> pagelist = mypageService.mypage_act(mem_no);
		mo.addAttribute("pagelist", pagelist);
		return "mypage";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/mymmodify")
	public String Mypage_Modi(HttpServletRequest request, Model mo) {
		String mem_id = request.getParameter("mem_id");
		System.out.println(mem_id);
		String mem_pw = request.getParameter("mem_pw");
		System.out.println(mem_pw);
		String mem_name = request.getParameter("mem_name");
		String mem_birth = request.getParameter("mem_birth");
		String mem_tel = request.getParameter("mem_tel");
		String mem_email = request.getParameter("mem_email");
		String mem_addr = request.getParameter("mem_addr");
		MypageService mypageService = sqlSession.getMapper(MypageService.class);
		
		mypageService.mypage_modi(mem_id, mem_pw, mem_name, mem_birth, mem_tel, mem_email, mem_addr);
		
		return "redirect:book";
	}
	
	@RequestMapping("my_delete")
	public String mem_del(HttpServletRequest request, Model mo) {
		String mem_id = request.getParameter("mem_id");
		MypageService mypageService = sqlSession.getMapper(MypageService.class);
		ArrayList<MypageDTO> dellist = mypageService.mypage_dellist(mem_id);
		mo.addAttribute("dellist", dellist);
		return "my_delete";
	}

	
	@RequestMapping(method = RequestMethod.POST, value = "/memdelete")
	public String Mypage_delete(HttpServletRequest request) {
		String mem_id = request.getParameter("mem_id");
		MypageService mypageService = sqlSession.getMapper(MypageService.class);
		mypageService.mypage_del(mem_id);
		return "redirect:book";
	}
	
}
