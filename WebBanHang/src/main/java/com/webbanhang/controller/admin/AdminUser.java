package com.webbanhang.controller.admin;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.webbanhang.impl.CutomerDao;
import com.webbanhang.impl.UserDao;
import com.webbanhang.model.Cutomer;
import com.webbanhang.model.EditUserAdmin;
import com.webbanhang.model.User;
import com.webbanhang.utils.ConvenientUtils;

@Controller
@RequestMapping("/admin")
public class AdminUser {
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	CutomerDao cutomerDao;
	
	@Autowired
	ConvenientUtils convenientUtils;
	
	

	@RequestMapping("/userlist")
	public String adminUserList(Model model) {
		model.addAttribute("adminlistuser", userDao.findAll());
		return "admin/AdminUserList";
	}
	
	@RequestMapping("/useredit")
	public String adminUserEdit(@ModelAttribute("edituser") EditUserAdmin edituser) {
		return "admin/AdminUserEdit";
	}
	
	@RequestMapping("/user/edit/{id}")
	public String adminUserEditID(Model model,@PathVariable("id") int id,@ModelAttribute("edituser") EditUserAdmin edituser) {
		User user = userDao.getById(id);
		Cutomer cutomer = cutomerDao.getById(user.getCutomer().getId());
		edituser = new EditUserAdmin(user, cutomer);
		model.addAttribute("edituser", edituser);
		return "admin/AdminUserEdit";
	}
	
	@PostMapping("/user/update/")
	public String update(Model model,@ModelAttribute("edituser") EditUserAdmin edituser,@RequestParam("img") MultipartFile img) {

		User user = edituser.getUser();
		Cutomer cutomer = edituser.getCutomer();
		user.setCutomer(cutomer);
//		user.setImg(img);
		try {
			cutomerDao.save(cutomer);
			userDao.save(user);
			convenientUtils.saveFile(img, "user");
		} catch (Exception e) { 
			e.printStackTrace();
		}
		
		return "redirect:/admin/user/edit/"+edituser.getIduser();
	}
	
}
