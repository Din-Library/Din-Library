package com.library.borrow_list;

import java.util.ArrayList;

public interface BoListService {
	// 대출현황
	ArrayList<BoListDTO> bo_list(int mem_no);
}
