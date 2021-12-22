package com.library.bebook;

import java.util.ArrayList;

public interface BeBookService {
	// 도서대출
	public void book_insert(String isbn, String title, int mem_no, String mem_id);
	
	// 도서확인
	public ArrayList<BeBookDTO> book_check(String isbn);
	
	// 대출권수 조회
	public Integer book_full(int mem_no);
	
	// 대출시 대출권수 증가
	public void bebook_update(int mem_no);
	
	// 도서반납
	public void book_checkin(String book_isbn, int mem_no);
	
	// 반납시 대출권수 감소
	public void member_checkin(int mem_no);
}
