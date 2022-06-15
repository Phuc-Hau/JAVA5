package com.webbanhang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webbanhang.impl.ProductDao;


@Controller
public class Productdetail {
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping
	public String d () {
		return "html/productdetail";	
	}
	
	@GetMapping("/product/sale/{id}")
	public String doGetFL(@PathVariable int id, Model model) {
		model.addAttribute("chitiet",productDao.getById(id));
		return "html/productdetail";
	}
	
	@GetMapping("/product/sanpham/{id}")
	public String doGetXH(@PathVariable int id,  Model model) {
		
		model.addAttribute("chitiet",productDao.getById(id));
		return "html/productdetail";
	}
}
