package com.library.bebook;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.library.mypage.MypageService;

@Controller
public class BebookController {
	@Autowired
	private SqlSession sqlsession;
	
	
	// ���� Ȯ�� ������
	@RequestMapping(value="/bebook_confirm", produces = "application/text; charset=utf8")
	public ModelAndView test(HttpServletRequest request) {
		String isbn = request.getParameter("isbn");
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String cover = request.getParameter("cover");
		String description = request.getParameter("description");
		String publisher = request.getParameter("publisher");
		int mem_no = Integer.parseInt(request.getParameter("mem_no"));
		String mem_id = request.getParameter("mem_id");
		
		BeBookService bebookService = sqlsession.getMapper(BeBookService.class);
		// ���� ���� Ȯ�� still_out�� true�� ���� ���� 
		ArrayList<BeBookDTO> still_out_list = bebookService.book_check(isbn);
		Boolean still_out = still_out_list.isEmpty();
		
		// ȸ���� ���� �Ǽ� 
		int bebook_cnt = bebookService.book_full(mem_no);
		
		ModelAndView mv = new ModelAndView();
		
		//System.out.println("����Ǽ�: " + bebook_cnt);
		//System.out.println("��������: " + still_out);
		
		mv.addObject("bebook_cnt", bebook_cnt);
		mv.addObject("still_out", still_out);
		mv.addObject("isbn", isbn);
		mv.addObject("title", title);
		mv.addObject("author", author);
		mv.addObject("cover", cover);
		mv.addObject("description", description);
		mv.addObject("publisher", publisher);
		mv.addObject("mem_no", mem_no);
		mv.addObject("mem_id", mem_id);
		mv.setViewName("bebook_check");
		
		return mv;
	}
	
	// �����ϱ�
	@RequestMapping(method=RequestMethod.POST, value="/bebook")
	public String bebook(HttpServletRequest request) {
		String isbn = request.getParameter("isbn");
		String title = request.getParameter("title");
		int mem_no = Integer.parseInt(request.getParameter("mem_no"));
		String mem_id = request.getParameter("mem_id");
		
		//System.out.println("isbn: " + isbn);
		//System.out.println("title: " + title);
		BeBookService bebookService = sqlsession.getMapper(BeBookService.class);
		bebookService.book_insert(isbn, title, mem_no, mem_id);
		bebookService.bebook_update(mem_no);
		return "redirect:borrow_list";
	}
	
	//�ݳ��ϱ�
	@RequestMapping("/checkin")
	public String checkin(HttpServletRequest request) {
		int mem_no = Integer.parseInt(request.getParameter("mem_no"));
		String book_isbn = request.getParameter("book_isbn");
		BeBookService bebookService = sqlsession.getMapper(BeBookService.class);
		bebookService.book_checkin(book_isbn, mem_no);
		bebookService.member_checkin(mem_no);
		return "redirect:borrow_list";
		
	}
	
}
