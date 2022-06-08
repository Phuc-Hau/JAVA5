package com.webbanhang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class index {

	@RequestMapping("signupr")
	public String showForm() {
		
		
		
		
		return "forgetpass/datpass";
	}
}
