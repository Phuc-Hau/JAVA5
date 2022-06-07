package com.webbanhang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webbanhang.model.User;

@Controller
public class index {

	@RequestMapping("/index")
	public String index(@ModelAttribute("user") User user) {
		return "index";
	}
}
