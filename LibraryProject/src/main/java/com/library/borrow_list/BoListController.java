package com.library.borrow_list;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView Bolist(HttpServletRequest request, Model mo) {
		ModelAndView mv = new ModelAndView();
		//로그인 정보 가져와서 회원번호 저장
		HttpSession session = request.getSession();
		LoginDTO ldto = (LoginDTO)session.getAttribute("member");
		int mem_no = ldto.getMem_no();
		
		// 회원번호로 대출현황 조회
		BoListService boListService = sqlSession.getMapper(BoListService.class);
		ArrayList<BoListDTO> bo_list = boListService.bo_list(mem_no);
		
		String[] book_isbn = new String[11];
		String[] book_title = new String[11];
		String[] be_date = new String[11];
		String[] be_return = new String[11];
		String mem_id = bo_list.get(0).getMem_id();
		int i = 0 ;
		for(BoListDTO k : bo_list) {
			book_isbn[i] = k.getBook_isbn();
			book_title[i] = k.getBook_title();
			be_date[i] = k.getBe_date();
			be_return[i] = k.getBe_return();
			i++;
		}
		mv.addObject("book_isbn", book_isbn);
		mv.addObject("book_title", book_title);
		mv.addObject("be_date", be_date);
		mv.addObject("be_return", be_return);
		mv.addObject("mem_id", mem_id);
		mv.addObject("mem_no", mem_no);
		return mv;
	}
}

