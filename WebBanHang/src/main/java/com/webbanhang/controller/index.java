package com.webbanhang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webbanhang.model.User;

@Controller
public class index {

	@RequestMapping("/index")
<<<<<<< HEAD
	public String index(@ModelAttribute("user") User user) {
=======
	public String index() {
>>>>>>> 5290559ca5571a76e224a232d420e6351fea4602
		return "index";
	}
}
