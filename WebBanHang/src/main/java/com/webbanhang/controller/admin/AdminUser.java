package com.webbanhang.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webbanhang.impl.UserDao;
import com.webbanhang.model.User;

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
	
	@RequestMapping("/admin/user/edit/{id}")
	public String adminUserEditID(Model model,@PathVariable("id") int id,@ModelAttribute("user") User user) {
		model.addAttribute("adminedituser", userDao.getById(id));
		return "admin/AdminUserEdit";
	}
	
}
