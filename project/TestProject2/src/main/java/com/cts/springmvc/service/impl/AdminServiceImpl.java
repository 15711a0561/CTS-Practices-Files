package com.cts.springmvc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.cts.springmvc.dao.impl.AdminDAOImpl;

public class AdminServiceImpl {
	
	
	 @Autowired
	    private AdminDAOImpl adminDAO1;
	  public boolean checkLogins(String VuserName, String VuserPassword){
          System.out.println("In Service class...Check Login");
          return adminDAO1.checkLogins(VuserName, VuserPassword);
   }
}
