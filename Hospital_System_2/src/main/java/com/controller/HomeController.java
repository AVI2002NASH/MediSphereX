package com.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showindex() {

		
		return "index";
	}
	@RequestMapping("/index")
	public String showhome() {

		
		return "index";
	}
	@RequestMapping("/doctor")
	public String showDoctor() {

		
		return "doctor";
	}
	@RequestMapping("/department")
	public String showdepartment() {

		
		return "department";
	}
	@RequestMapping("/blog")
	public String showblog() {

		
		return "blog";
	}
	@RequestMapping("/appointment")
	public String showAppointment() {

		
		return "appointment";
	}
	@RequestMapping("/doctor_login")
	public String showDoctorlogin() {

		
		return "doctor_login";
	}
	@RequestMapping("/user_login")
	public String showuserlogin() {

		
		return "user_login";
	}
	@RequestMapping("/admin_login")
	public String showadmin() {

		
		return "admin_login";
	}

}