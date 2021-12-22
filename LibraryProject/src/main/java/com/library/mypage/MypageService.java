package com.library.mypage;

import java.util.ArrayList;

public interface MypageService {
	
	// 마이페이지 회원정보 조회
	public ArrayList<MypageDTO> mypage_act(int mem_no);
	
	// 마이페이지 회원정보 수정
	public void mypage_modi(String mem_id, String mem_pw, String mem_name, String mem_birth, String mem_tel,
			String mem_email, String mem_addr);
	
	// 마이페이지 회원탈퇴를 위한 회원정보 조회
	public ArrayList<MypageDTO> mypage_dellist(String mem_id);
	
	// 마이페이지 회원탈퇴
	public void mypage_del(String mem_id);
	
}

