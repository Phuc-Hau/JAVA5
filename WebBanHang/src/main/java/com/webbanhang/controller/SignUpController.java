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
@RequestMapping("/account")
public class SignUpController {
	@Autowired
	UserDao userDao;
	
	@Autowired
	CutomerDao cutomerDao;
	
	@RequestMapping("/signup")
	public String showForm(@ModelAttribute("user") User user) {
		return "user/dangky";
	}
	
	
	@PostMapping("/user/dangky")
	public String signup(@ModelAttribute("user") User userT,@RequestParam("fullname") String fullname) {
		User user = userT;
		user.setStatus(true);
		user.setRules(1);
		Cutomer cutomer = new Cutomer();
		int id = cutomerDao.getIdFinal()+1;
		cutomer.setId(id);
		cutomer.setName(fullname);
		
		user.setCutomer(cutomer);
		try {
			cutomerDao.save(cutomer);
			userDao.save(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println();
		
		return "user/dangky";
	}
	
	
}
