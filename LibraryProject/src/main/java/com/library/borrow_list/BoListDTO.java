package com.library.borrow_list;

public class BoListDTO {
	String book_isbn, book_title, mem_id, be_date, be_return, be_status;
	int mem_no;
	
	public BoListDTO() {
		super();
	}

	public BoListDTO(String book_isbn, String book_title, String mem_id, String be_date, String be_return,
			String be_status, int mem_no) {
		super();
		this.book_isbn = book_isbn;
		this.book_title = book_title;
		this.mem_id = mem_id;
		this.be_date = be_date;
		this.be_return = be_return;
		this.be_status = be_status;
		this.mem_no = mem_no;
	}

	public String getBook_isbn() {
		return book_isbn;
	}

	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}

	public String getBook_title() {
		return book_title;
	}

	public void setBook_title(String book_title) {
		this.book_title = book_title;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getBe_date() {
		return be_date;
	}

	public void setBe_date(String be_date) {
		this.be_date = be_date;
	}

	public String getBe_return() {
		return be_return;
	}

	public void setBe_return(String be_return) {
		this.be_return = be_return;
	}

	public String getBe_status() {
		return be_status;
	}

	public void setBe_status(String be_status) {
		this.be_status = be_status;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	
}

