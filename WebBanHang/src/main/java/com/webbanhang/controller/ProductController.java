package com.webbanhang.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webbanhang.impl.OrderDetailDao;
import com.webbanhang.impl.ProductDao;
import com.webbanhang.impl.UserDao;
import com.webbanhang.model.OrderDetail;
import com.webbanhang.model.User;
import com.webbanhang.service.SessionService;


@Controller
public class ProductController {
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	SessionService session;
	
	@Autowired
	OrderDetailDao orderDetailDao;
	
	
	
	@RequestMapping("/product/index")
	public String index(Model model) {		
		User user =session.get("user");
		if(user !=null) {
			List<OrderDetail> list = orderDetailDao.findAllUsername(user.getCutomer().getId());
			model.addAttribute("amountcart", list.size());
		}
		model.addAttribute("product",productDao.findAll());
		
		return "index";
	}
}
