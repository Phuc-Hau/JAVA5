package com.webbanhang.controller;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webbanhang.utils.MailerServiceUtils;

@Controller
public class MailerServiceController {

	@Autowired
	MailerServiceUtils mailer;

	@ResponseBody
	@RequestMapping("/mailer/demo")
	public String demo(Model model) {
		try {
			mailer.send("phuchau164@gmail.com", "Subject", "Body");
			return "OK";
		} catch (MessagingException e) {
			return e.getMessage();
		}
	}
}
