package com.library.info;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {
	@RequestMapping("/information")
	public String information() {
		
		return "information";
		
	}
		
		@RequestMapping("/notice")
		public String notice() {
			
			return "notice";
	}
		
		@RequestMapping("/introduce")
		public String introduce() {
			
			return "introduce";
	}
		
}


