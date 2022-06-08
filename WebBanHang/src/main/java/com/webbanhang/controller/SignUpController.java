package com.webbanhang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.webbanhang.impl.CutomerDao;
import com.webbanhang.impl.UserDao;
import com.webbanhang.model.Cutomer;
import com.webbanhang.model.User;

@Controller
@RequestMapping("account")
public class SignUpController {
	@Autowired
	UserDao userDao;
	
	@Autowired
	CutomerDao cutomerDao;
	
	@RequestMapping("signup")
	public String showForm(@RequestParam("fullname") String fullname, @ModelAttribute("user") User user) {
		
		List<User> s = userDao.findAll();
		System.out.println(s.get(0).getId());
		
		return "index";
	}
	
	
	
}
