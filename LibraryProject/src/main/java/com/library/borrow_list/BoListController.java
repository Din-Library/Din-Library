package com.library.borrow_list;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.library.login.LoginDTO;


@Controller
public class BoListController {
	/* 
	 * ������ 
	 */
	@Autowired
	private SqlSession sqlSession;
	
	// ������Ȳ 
	@RequestMapping("/borrow_list")
	public String Bolist(HttpServletRequest request, Model mo) {
		
		//�α��� ���� �����ͼ� ȸ����ȣ ����
		HttpSession session = request.getSession();
		LoginDTO ldto = (LoginDTO)session.getAttribute("member");
		int mem_no = ldto.getMem_no();
		
		// ȸ����ȣ�� ������Ȳ ��ȸ
		BoListService boListService = sqlSession.getMapper(BoListService.class);
		ArrayList<BoListDTO> bo_list = boListService.bo_list(mem_no);
		mo.addAttribute("bo_list", bo_list);
		
		return "borrow_list";
	}
}

