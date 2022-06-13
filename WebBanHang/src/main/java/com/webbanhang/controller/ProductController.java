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
import com.webbanhang.service.CookieService;


@Controller
public class ProductController {
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	OrderDetailDao orderDetailDao;
	
	@Autowired
	UserDao userDao;
	
	
	@RequestMapping("/product/index")
	public String index(Model model) {		
		
		User user =userDao.getById(3);
		List<OrderDetail> list = orderDetailDao.findAllUsername(user.getCutomer().getId());
		
		model.addAttribute("product",productDao.findAll());
		model.addAttribute("amountcart", list.size());
		return "index";
	}
}
