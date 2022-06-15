package com.webbanhang.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webbanhang.impl.ProductDao;
import com.webbanhang.impl.UserDao;


@Controller
public class ProductController {
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	UserDao userDao;
	
	
	@RequestMapping("/product/index")
	public String index(Model model) {		
		
		model.addAttribute("product",productDao.findAll());
		
		return "index";
	}
}
