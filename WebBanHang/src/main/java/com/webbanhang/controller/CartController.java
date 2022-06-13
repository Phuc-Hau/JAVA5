package com.webbanhang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webbanhang.impl.OrderDetailDao;
import com.webbanhang.impl.UserDao;
import com.webbanhang.model.OrderDetail;
import com.webbanhang.model.User;

@Controller
public class CartController {
	
	@Autowired
	OrderDetailDao orderDetailDao;
	
	@Autowired
	UserDao userDao;

	@RequestMapping("/cart")
	public String cart(Model model) {
		User user =userDao.getById(2);
		List<OrderDetail> list = orderDetailDao.findAllUsername(user.getCutomer().getId());
		model.addAttribute("cart", list);
		return "cart";
	}
}
