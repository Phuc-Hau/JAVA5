package com.webbanhang.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webbanhang.impl.GroupProductDao;
import com.webbanhang.impl.ProductDao;
import com.webbanhang.model.GroupProduct;

@Controller
@RequestMapping("/admin")
public class AdminProduct {
	@Autowired
	ProductDao productDao;
	
	@Autowired
	GroupProductDao groupProductDao;

	@RequestMapping("/productlist")
	public String adminProductList(Model model) {
		model.addAttribute("adminlistproduct", productDao.findAll());
		return "admin/AdminProductList";
	}
	
	@RequestMapping("/product/edit/{id}")
	public String adminEditProductList(Model model,@PathVariable("id") int id) {
		System.out.println(id);
		return "admin/AdminProductList";
	}
	
	@ModelAttribute("groupproduct")
	public List<GroupProduct> getFaculties() {
		List<GroupProduct> list = groupProductDao.findAll();
		return list;
	}
}
