package com.cts.springmvc.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.cts.springmvc.entity.Admin;
import com.cts.springmvc.entity.Product;

public class AdminDAOImpl {

	
	@Autowired
	SessionFactory sessionFactory;//dispatcher-servlet.xm
	public void createAdmin(Admin admin) {
		Session session = sessionFactory.openSession();
		session.save(admin);//persist hibernate
		System.out.println("Record Inserted");
		session.close();
	}

	 public boolean checkLogins(String VuserName, String VuserPassword){
			System.out.println("In Check login");
			Session session = sessionFactory.openSession();
			boolean userFound = false;
			//Query using Hibernate Query Language
			String SQL_QUERY1 =" from com.cts.springmvc.entity.Admin as o where o.Vusername=? and o.Vpassword=?";
			Query query1 = session.createQuery(SQL_QUERY1);

			
			query1.setParameter(0,VuserName);//first ?
			query1.setParameter(1,VuserPassword);//second ?
			List list = query1.list();

			if ((list != null) && (list.size() > 0)) {
				userFound= true;
			}

			session.close();
			return userFound;
	  
}
	
}
