package com.library.join;

public interface JoinService {
	
	//ȸ������
	public void join(String mem_id, String mem_pw, String mem_name, String mem_birth, String mem_tel, String mem_email, String mem_addr, int mem_bebook);

	//���̵� �ߺ�üũ
	public int idChk(String mem_id) throws Exception;
}
