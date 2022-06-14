package com.webbanhang;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.webbanhang.model.User;
import com.webbanhang.service.SessionService;


@Service
public class AuthInterceptor implements HandlerInterceptor{

	@Autowired
	SessionService session;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
//		String uri = request.getRequestURI();
//		User user = session.get("user"); // lấy từ session
//		String error = "";
//		
//		if(user == null) { // chưa đăng nhập
//			error = "Please login!";
//		}
//		
//		// không đúng vai trò
//		else if(!user.isStatus() && uri.startsWith("/admin/")) {
//			error = "Access denied!";
//		}
//		
//		if(error.length() > 0) { // có lỗi
//			session.set("security-uri", uri);
//			response.sendRedirect("/account/login?error=" + error);
//			return false;
//		}
		
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}
	
	

}
