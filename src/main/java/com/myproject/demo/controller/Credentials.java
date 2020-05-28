package com.myproject.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myproject.demo.dao.auth_role_repo;
import com.myproject.demo.dao.auth_user_repo;
import com.myproject.demo.dao.auth_user_role_repo;
import com.myproject.demo.model.auth_user;
import com.myproject.demo.model.auth_user_role;

@Controller
public class Credentials {

	@Autowired
	auth_user_repo user_repo;
	
	@Autowired
	auth_role_repo role_repo;
	
	@Autowired
	auth_user_role_repo user_role_repo;
	
	@Autowired
	BCryptPasswordEncoder encoder;
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView Login() {
		ModelAndView mv= new ModelAndView("login.jsp");
		return mv;
	}
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public ModelAndView Register() {
		ModelAndView mv= new ModelAndView("signup.jsp");
		List<String> messages =new ArrayList<String>();
		mv.addObject("messages", messages);
		return mv;
	}
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public ModelAndView Register(@RequestParam("full_name") String full_name,@RequestParam("location") String location,@RequestParam("email") String email,@RequestParam("password") String password) {
		
		auth_user user=new auth_user();
		user.setFull_name(full_name);
		user.setEmail(email);
		user.setLocation(location);
		user.setPassword(encoder.encode(password));
		user.setStatus("VERIFIED");
		if(isUserAlreadyPresent(email)==false) {
			ModelAndView mv= new ModelAndView("login.jsp");
			int role_id=1;
			auth_user_role aur=new auth_user_role();
			user_repo.save(user);
			aur.setAuth_user_id(user_repo.findByEmail(email));
			aur.setAuth_role_id(role_id);
			user_role_repo.save(aur);
			return mv;
		}
		else {
			ModelAndView mv= new ModelAndView("signup.jsp");
			List<String> messages =new ArrayList<String>();
			messages.add("Already Registered");
			mv.addObject("messages", messages);
			return mv;
		}
	}
	public boolean isUserAlreadyPresent(String email) {
		List<String> emails=user_repo.findByAllEmail();
		if(emails.size()==0)
			return false;
		else {
			
			if(emails.contains(email)) {
				return true;
			}
			else {
				return false;
			}
		}
	}
	
}
