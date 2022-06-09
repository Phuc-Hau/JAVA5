package com.webbanhang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignInController {

	
	@RequestMapping("/dangnhap")
	public String signin() {
		
		return "user/dangnhap";
	}
}
