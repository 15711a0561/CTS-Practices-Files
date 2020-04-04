package com.cts.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.cts.springmvc.entity.Admin;
import com.cts.springmvc.service.impl.AdminServiceImpl;

@Controller
public class AdminController {

	@Autowired
	private AdminServiceImpl adminService1;
	
	
	
	@RequestMapping(value = "admin", method = RequestMethod.GET)
	public ModelAndView viewLogin(@ModelAttribute Admin admin) {
		return new ModelAndView("adminlogin");//adminlogin.jsp
	}


	@RequestMapping(value = "signin", method = RequestMethod.POST)
	public ModelAndView processLogin(@ModelAttribute Admin admin) 
	{
		boolean emp1 = adminService1.checkLogins(admin.getVusername(),admin.getVpassword());
		ModelAndView model = null;
		if (emp1) 
		{
			model = new ModelAndView("adminsuccess");//loginsuccess.jsp
			model.addObject("emp1", admin.getVusername());//access in jsp
			
		} else {
			model = new ModelAndView("adminlogin");//login.jsp
			model.addObject("result", "Invalid Username or Password!!");
		}
		return model;
	}

}
