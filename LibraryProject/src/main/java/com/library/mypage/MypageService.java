package com.library.mypage;

import java.util.ArrayList;

public interface MypageService {
	
	// ���������� ȸ������ ��ȸ
	public ArrayList<MypageDTO> mypage_act(int mem_no);
	
	// ���������� ȸ������ ����
	public void mypage_modi(String mem_id, String mem_pw, String mem_name, String mem_birth, String mem_tel,
			String mem_email, String mem_addr);
	
	// ���������� ȸ��Ż�� ���� ȸ������ ��ȸ
	public ArrayList<MypageDTO> mypage_dellist(String mem_id);
	
	// ���������� ȸ��Ż��
	public void mypage_del(String mem_id);
	
}

