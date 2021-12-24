package com.library.info;

import java.util.ArrayList;

public interface NoticeService {
	
	// 공지사항 글 작성
	public void notice_input(String writer, String title, String content);
	
	// 공지사항 글 목록
	public ArrayList<NoticeDTO> notice_list();
	
	// 공지사항 글 자세히 보기
	public ArrayList<NoticeDTO> notice_detail(int notice_no);
	
	// 공지사항 조회수 증가
	public void readcnt(int notice_no);
	
	// 공지사항 글 삭제
	public void notice_delete(int notice_no);
	
	// 게시물 총 갯수
	public int cntNotice();

	// 페이징 처리 게시글 조회
	public ArrayList<NoticeDTO> selectNotice(PagingVO vo);
}
