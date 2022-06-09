package com.webbanhang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.webbanhang.impl.UserDao;
import com.webbanhang.model.User;
import com.webbanhang.untity.MailerServiceUtils;

@Controller
public class ForgetPassController {

	@Autowired
	UserDao userDao;
	
	@Autowired
	MailerServiceUtils mailer;

	User user;
	String capChas;

	@RequestMapping("/forgetpass")
	public String searchTK(Model model) {
		return "forgetpass/timtk";
	}

	@PostMapping("forgetmail")
	public String capcha(Model model, @RequestParam("email") String email) {

		user = userDao.findByEmail(email);

		if (user == null) {
			model.addAttribute("message", "Email chưa đăng ký tài khoản");
			return "forgetpass/timtk";
		} else {
			model.addAttribute("message", "");
			String sao = String.valueOf(email.charAt(0));
			int u = email.indexOf("@") - 1;
			for (int i = 0; i < email.length(); i++) {
				if (i >= u) {
					sao += String.valueOf(email.charAt(i));
				} else
					sao += "*";
			}

			capChas = "";
			for (int i = 0; i < 6; i++) {
				double randomDouble = Math.random();
				randomDouble = randomDouble * 9 + 1;
				capChas += (int) randomDouble;
			}
			model.addAttribute("email", sao);
			return "forgetpass/capcha";
		}

	}

	@PostMapping("/datpassword")
	public String datpass(Model model, @RequestParam("capcha") String capcha) {
		if (capChas.equals(capcha)) {
			model.addAttribute("message", "");
			return "forgetpass/datpass";
		} else {
			System.out.println(capChas);
			model.addAttribute("message", "Sai mã xác thực không chính xác!");
			return "forgetpass/capcha";
		}

	}

	@PostMapping("updatepassword")
	public String updatepassword(@RequestParam("password_new") String password_new) {
		user.setPassword(password_new);
		userDao.save(user);
		user = null;
		capChas = "";

		return "";
	}

}