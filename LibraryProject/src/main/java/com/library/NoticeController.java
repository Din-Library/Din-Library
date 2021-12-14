package com.library.notice;

import java.io.IOException;

import org.springframework.web.bind.annotation.RequestMapping;

public class NoticeController{
	
	@RequestMapping("/notice")
	public String notice() {
		
		return "notice";
	}
	
	

}
