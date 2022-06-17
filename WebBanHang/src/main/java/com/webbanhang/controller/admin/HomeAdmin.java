package com.webbanhang.controller.admin;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webbanhang.impl.OrderDao;

@Controller
@RequestMapping("/admin")
public class HomeAdmin {

	@Autowired
	OrderDao orderDao;
	
	@RequestMapping("/index")
	public String index(Model model) {
		
        Date date = new Date();
        
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat();
        simpleDateFormat.applyPattern("MM");
        String month = simpleDateFormat.format(date);
        simpleDateFormat.applyPattern("YYYY");
        String year =simpleDateFormat.format(date);
        
        int sumPriceMonth = orderDao.sumPriceMonth(Integer.parseInt(month));
        int sumCount = orderDao.sumCountMonth(Integer.parseInt(month));
        int sumPriceYear =orderDao.sumPriceYear(Integer.parseInt(year));
        model.addAttribute("month", month);
        model.addAttribute("year", year);
		model.addAttribute("sumpricemonth", sumPriceMonth);
		model.addAttribute("sumcount", sumCount);
		model.addAttribute("sumpriceyear", sumPriceYear);
		
		return "admin/AdminIndex";
	}
}
