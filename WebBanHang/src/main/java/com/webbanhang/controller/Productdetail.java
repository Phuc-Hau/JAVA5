package com.webbanhang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webbanhang.impl.OrderDetailDao;
import com.webbanhang.impl.ProductDao;
import com.webbanhang.model.OrderDetail;
import com.webbanhang.model.User;
import com.webbanhang.service.SessionService;


@Controller
public class Productdetail {
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	SessionService session;
	
	@Autowired
	OrderDetailDao orderDetailDao;
	
	@RequestMapping
	public String d (Model model) {
		
		return "html/productdetail";	
	}
	
	@GetMapping("/product/sale/{id}")
	public String doGetFL(@PathVariable int id, Model model) {
		User user =session.get("user");
		if(user !=null) {
			List<OrderDetail> list = orderDetailDao.findAllUsername(user.getCutomer().getId());
			model.addAttribute("amountcart", list.size());
		}
		model.addAttribute("chitiet",productDao.getById(id));
		return "html/productdetail";
	}
	
	@GetMapping("/product/sanpham/{id}")
	public String doGetXH(@PathVariable int id,  Model model) {
		User user =session.get("user");
		if(user !=null) {
			List<OrderDetail> list = orderDetailDao.findAllUsername(user.getCutomer().getId());
			model.addAttribute("amountcart", list.size());
		}
		model.addAttribute("chitiet",productDao.getById(id));
		return "html/productdetail";
	}
}
