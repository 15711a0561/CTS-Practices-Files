package com.cts.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Adminlogin")
public class Admin {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@Column
	private String Vusername;
	

	@Column
	private String Vpassword;



	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public String getVusername() {
		return Vusername;
	}


	public void setVusername(String vusername) {
		Vusername = vusername;
	}


	public String getVpassword() {
		return Vpassword;
	}


	public void setVpassword(String vpassword) {
		Vpassword = vpassword;
	}

	
	
	
	
}