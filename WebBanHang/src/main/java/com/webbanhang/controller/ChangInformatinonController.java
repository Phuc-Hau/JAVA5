package com.webbanhang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webbanhang.model.EditUserAdmin;

@Controller

public class ChangInformatinonController {

	
	@RequestMapping("/changinformation")
	public String changInformation(@ModelAttribute("edituser") EditUserAdmin edituser) {
		
		return "user/ChangInformation";
	}
}
