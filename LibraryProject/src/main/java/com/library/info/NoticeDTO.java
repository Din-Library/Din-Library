package com.library.info;

public class NoticeDTO {
	int notice_no;
	String writer, title, content;
	int readcnt;
	String writeday;
	public NoticeDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NoticeDTO(int notice_no, String writer, String title, String content, int readcnt, String writeday) {
		super();
		this.notice_no = notice_no;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.readcnt = readcnt;
		this.writeday = writeday;
	}
	public int getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public String getWriteday() {
		return writeday;
	}
	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}
	
	
}
