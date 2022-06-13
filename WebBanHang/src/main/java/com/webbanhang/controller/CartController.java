package com.webbanhang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.webbanhang.impl.OrderDetailDao;
import com.webbanhang.impl.UserDao;
import com.webbanhang.model.OrderDetail;
import com.webbanhang.model.User;

@Controller
@RequestMapping("/account")
public class CartController {
	
	@Autowired
	OrderDetailDao orderDetailDao;
	
	@Autowired
	UserDao userDao;

	@RequestMapping("/cart")
	public String cart(Model model) {
		User user =userDao.getById(3);
		List<OrderDetail> list = orderDetailDao.findAllUsername(user.getCutomer().getId());
		model.addAttribute("cart", list);
		model.addAttribute("amountcart", list.size());
		double priceSum=0;
		int amountSum=0;
		for (OrderDetail orderDetail : list) {
			priceSum+= orderDetail.getProduct().getPrice()*orderDetail.getQuantity();
			amountSum+=orderDetail.getQuantity();
		}
		model.addAttribute("pricesum", priceSum);
		model.addAttribute("amountsum", amountSum);
		priceSum=0;
		amountSum=0;
		return "cart";
	}
	
	@PostMapping("/cart/{p}")
	public String u (Model model,@PathVariable("p")String p,@RequestParam("id") int id) {
		try {
		    OrderDetail orderDetail	= orderDetailDao.getById(id);
		    if(p.equals("plus")) {
		    	orderDetail.setQuantity(orderDetail.getQuantity()+1);
		    }else if(p.equals("pre") && orderDetail.getQuantity()>0) {
		    	orderDetail.setQuantity(orderDetail.getQuantity()-1);
		    }
		    orderDetailDao.save(orderDetail);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/account/cart";
	}
	
	@PostMapping("/cart/pay")
	public String pay() {
		System.out.println("pay");
		return "redirect:/account/cart";
	}
	
	@PostMapping("/cart/delete")
	public String deleteCart(@RequestParam("id") int id) {
		System.out.println("delete: " +id);
		return "redirect:/account/cart";
	}
}
