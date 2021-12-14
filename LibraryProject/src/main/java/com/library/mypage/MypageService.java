package com.library.mypage;

import java.util.ArrayList;

public interface MypageService {
	/* public ArrayList<MypageDTO> mypage_act(String mem_name); */
	public ArrayList<MypageDTO> mypage_act(int mem_no);
	
	public void mypage_modi(String mem_id, String mem_pw, String mem_name, String mem_birth, String mem_tel,
			String mem_email, String mem_addr);

	public ArrayList<MypageDTO> mypage_dellist(String mem_id);
	
	public MypageDTO mem_delete(String mem_id, String mem_pw, String mem_rebook);
	
	public void mypage_del(String mem_id);
	

}
