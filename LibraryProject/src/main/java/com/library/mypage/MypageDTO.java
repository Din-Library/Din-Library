package com.library.mypage;

public class MypageDTO {
	int mem_no;
	String mem_id, mem_pw, mem_name, mem_birth,	mem_tel, mem_email,	mem_addr, mem_bebook, mem_rebook;

	public MypageDTO() {
		super();
	}

	public MypageDTO(int mem_no, String mem_id, String mem_pw, String mem_name, String mem_birth, String mem_tel, String mem_email,
			String mem_addr, String mem_bebook) {
		super();
		this.mem_no = mem_no;
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_birth = mem_birth;
		this.mem_tel = mem_tel;
		this.mem_email = mem_email;
		this.mem_addr = mem_addr;
		this.mem_bebook = mem_bebook;
	}
	
	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_birth() {
		return mem_birth;
	}

	public void setMem_birth(String mem_birth) {
		this.mem_birth = mem_birth;
	}

	public String getMem_tel() {
		return mem_tel;
	}

	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getMem_addr() {
		return mem_addr;
	}

	public void setMem_addr(String mem_addr) {
		this.mem_addr = mem_addr;
	}

	public String getMem_bebook() {
		return mem_bebook;
	}

	public void setMem_bebook(String mem_bebook) {
		this.mem_bebook = mem_bebook;
	}
	
}

