package com.webbanhang.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webbanhang.impl.UserDao;

@Controller
public class AdminUser {
	
	@Autowired
	UserDao userDao;

	@RequestMapping("/admin/userlist")
	public String adminUserList(Model model) {
		model.addAttribute("adminlistuser", userDao.findAll());
		return "admin/AdminUserList";
	}
	
	@RequestMapping("/admin/useredit")
	public String adminUserEdit() {
		return "admin/AdminUserEdit";
	}
	
}
