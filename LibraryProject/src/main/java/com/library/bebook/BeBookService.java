package com.library.bebook;

import java.util.ArrayList;

public interface BeBookService {
	// ��������
	public void book_insert(String isbn, String title, int mem_no, String mem_id);
	
	// ����Ȯ��
	public ArrayList<BeBookDTO> book_check(String isbn);
	
	// ����Ǽ� ��ȸ
	public Integer book_full(int mem_no);
	
	// ����� ����Ǽ� ����
	public void bebook_update(int mem_no);
	
	// �����ݳ�
	public void book_checkin(String book_isbn, int mem_no);
	
	// �ݳ��� ����Ǽ� ����
	public void member_checkin(int mem_no);
}
