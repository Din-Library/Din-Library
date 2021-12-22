package com.library.join;

public interface JoinService {
	
	//회원가입
	public void join(String mem_id, String mem_pw, String mem_name, String mem_birth, String mem_tel, String mem_email, String mem_addr, int mem_bebook);

	//아이디 중복체크
	public int idChk(String mem_id) throws Exception;
}
