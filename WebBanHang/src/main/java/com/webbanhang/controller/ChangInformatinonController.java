package com.webbanhang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.webbanhang.impl.CutomerDao;
import com.webbanhang.impl.UserDao;
import com.webbanhang.model.Cutomer;
import com.webbanhang.model.EditUserAdmin;
import com.webbanhang.model.User;
import com.webbanhang.utils.ConvenientUtils;

@Controller

public class ChangInformatinonController {
	@Autowired
	UserDao userDao;
	
	@Autowired
	CutomerDao cutomerDao;
	
	@Autowired
	ConvenientUtils convenientUtils;

	@RequestMapping("/changinformation")
	public String changInformation(@ModelAttribute("edituser") EditUserAdmin edituser) {
		
		
		return "user/ChangInformation";
	}
	
	@PostMapping("/account/user/update")
	public String changInformation(@ModelAttribute("edituser") EditUserAdmin edituser,
			@RequestParam("calc_shipping_district") String district,
			@RequestParam("calc_shipping_provinces") String provinces
		
			) {
			User user = edituser.getUser();
			Cutomer cutomer = edituser.getCutomer();
		    cutomer.setDistrict(district);
		    cutomer.setProcvince(provinces);
		   
		    System.out.println(district + provinces);
		 
			
			try {
//				cutomerDao.save(cutomer);
//				userDao.save(user);
//				convenientUtils.saveFile(img, "user");
			}catch(Exception e) {
				e.printStackTrace();
				
			}
		
		
		

			return "user/ChangInformation";
	}
}
