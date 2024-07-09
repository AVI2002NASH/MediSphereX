package com.service;
import com.model.User;

public interface UserService {
	

	
	
	    boolean saveUser(User user);
	    User login(String email, String password);
	}


