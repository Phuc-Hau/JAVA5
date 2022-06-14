package com.webbanhang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.webbanhang.impl.UserDao;
import com.webbanhang.model.User;



@Controller
@RequestMapping("/account")
public class SignInController {
	
	@Autowired
	UserDao dao;
	
	@RequestMapping("/signin")
	public String signin(ModelMap model, @ModelAttribute("user") User user ) {
		return "user/dangnhap";
	}
	
	@PostMapping("/login")
	public String login(ModelMap model, @ModelAttribute("user") User user ) {
		User check=dao.checkLogin(user.getUsername(), user.getPassword());
		if(check != null) {
			model.addAttribute("mess", "Đăng nhập thành công!");
			return "redirect:/product/index";
		}else {
			model.addAttribute("mess", "Đăng nhập thất bại!");
			return "user/dangnhap";
		}
		
	}
	
}
