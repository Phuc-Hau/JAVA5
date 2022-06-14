package com.webbanhang.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class HomeAdmin {

	
	@RequestMapping("/index")
	public String index() {
		return "admin/AdminIndex";
	}
}
