package com.library.info;

import java.util.ArrayList;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InfoController {
	@Autowired
	private SqlSession sqlSession;
	
	// 이용안내
	@RequestMapping("/information")
	public String information() {
		return "information";
	}
	
	// 도서관소개
	@RequestMapping("/introduce")
	public String introduce() {		
		return "introduce";
	}
	
	// 공지사항
	@RequestMapping("/notice")
	public String notice(Model model) {
		NoticeService noticeService = sqlSession.getMapper(NoticeService.class);
		ArrayList<NoticeDTO> alist =  noticeService.notice_list();
		model.addAttribute("nlist", alist);
		return "notice";
	}
	
	// 공지사항 글작성
	@RequestMapping("/notice_write")
	public String notice_write() {		
		return "notice_write";
	}
		
	
	@RequestMapping(method=RequestMethod.POST, value="notice_input")
	public String notice_input(HttpServletRequest request) {
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content").replace("\r\n", "<br>");
		NoticeService noticeService = sqlSession.getMapper(NoticeService.class);
		noticeService.notice_input(writer, title, content);
		return "redirect:notice";
	}
	
	// 공지사항 글 자세히 보기
	@RequestMapping("/notice_detail")
	public String notice_detail(HttpServletRequest request, Model model) {
		int notice_no = Integer.parseInt(request.getParameter("notice_no"));
		readcnt(notice_no);
		NoticeService noticeService = sqlSession.getMapper(NoticeService.class);
		ArrayList<NoticeDTO> alist =  noticeService.notice_detail(notice_no);
		model.addAttribute("nlist", alist);
		return "notice_detail";
	}
	
	// 공지사항 조회수 증가
	private void readcnt(int notice_no) {
		NoticeService noticeService = sqlSession.getMapper(NoticeService.class);
		noticeService.readcnt(notice_no);
	}
	
	// 공지사항 글 삭제
	@RequestMapping(method=RequestMethod.POST, value="notice_delete")
	public String notice_delete(HttpServletRequest request) {
		int notice_no = Integer.parseInt(request.getParameter("notice_no"));
		NoticeService noticeService = sqlSession.getMapper(NoticeService.class);
		noticeService.notice_delete(notice_no);
		return "redirect:notice";
	}
}


