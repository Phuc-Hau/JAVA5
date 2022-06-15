package com.webbanhang;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.webbanhang.impl.UserDao;
import com.webbanhang.model.User;
import com.webbanhang.service.CookieService;
import com.webbanhang.service.SessionService;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer{

	@Autowired
	AuthInterceptor auth;

	@Autowired
	UserDao userDao;
	
	@Autowired
	CookieService cookie;
	
	@Autowired
	SessionService session;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(auth)
		.addPathPatterns("/account/cart", "/admin/**")
		.excludePathPatterns("/assets/**","/product/index");
		
//		User user = userDao.checkLogin(cookie.getValue("user"), cookie.getValue("password"));
//		if(user != null) {
//			session.set("user", user);
//		}
	}


	
}
