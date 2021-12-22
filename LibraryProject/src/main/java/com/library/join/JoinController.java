package com.library.join;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinController {
	/*
	 * 회원가입
	 */
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/join")
	public String join() {
		return "join";
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/join_save")
	public ModelAndView join_save(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		JoinService joinService = sqlSession.getMapper(JoinService.class);
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		String mem_name = request.getParameter("mem_name");
		String mem_birth = request.getParameter("mem_birth");
		String mem_tel = request.getParameter("mem_tel");
		String mem_email = request.getParameter("mem_email");
		String mem_addr = request.getParameter("mem_addr");
		int mem_bebook = 0;
		
		
		joinService.join(mem_id, mem_pw, mem_name, mem_birth, mem_tel, mem_email, mem_addr, mem_bebook);
		mv.setViewName("redirect:book");
		return mv;
		
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value="/idChk", method=RequestMethod.POST)
	public int idChk(String mem_id) throws Exception {
		JoinService joinService = sqlSession.getMapper(JoinService.class);
		int result = joinService.idChk(mem_id);
		return result;
	}
	
}
