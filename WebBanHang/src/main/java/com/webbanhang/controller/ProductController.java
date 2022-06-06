package com.webbanhang.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webbanhang.impl.CutomerDao;
import com.webbanhang.impl.OrderDao;
import com.webbanhang.impl.OrderDetailDao;
import com.webbanhang.impl.ProductDao;
import com.webbanhang.impl.UserDao;
import com.webbanhang.model.Cutomer;
import com.webbanhang.model.Order;
import com.webbanhang.model.OrderDetail;
import com.webbanhang.model.Product;
import com.webbanhang.model.User;

@Controller
public class ProductController {
	@Autowired
	ProductDao productDao;
	
	
	@RequestMapping("/product/index")
	public String index(Model model) {
//		try {
//			List<Product> list = productDao.findAll();
//			System.out.println(list.get(0).getImgs().get(0).getImage()); 
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
		
		model.addAttribute("product",productDao.findAll());
		return "index";
	}
}
