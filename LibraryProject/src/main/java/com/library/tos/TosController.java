package com.library.tos;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TosController {
	/*
	 * �̿���, ��������ó����ħ
	 */
	@RequestMapping("/TOS")
	public String TOS() {
		return "TOS";
	}
	
	@RequestMapping("/private")
	public String private1() {
		return "private";
	}
	
	@RequestMapping("/map")
	   public String map() {
	      return "map";
	   }
}
