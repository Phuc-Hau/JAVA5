package com.webbanhang.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeAdmin {

	
	@RequestMapping("/admin/index")
	public String index() {
		
		return "admin/AdminUser";
	}
}