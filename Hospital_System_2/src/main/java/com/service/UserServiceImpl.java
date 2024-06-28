package com.service;
import com.dao.UserDAO;
import com.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
public class UserServiceImpl implements UserService {

	

	
	    @Autowired
	    private UserDAO userDAO;

	    @Override
	    @Transactional
	    public boolean saveUser(User user) {
	        return userDAO.saveUser(user);
	    }

	    @Override
	    @Transactional(readOnly = true)
	    public User login(String email, String password) {
	        return userDAO.login(email, password);
	    }
	}


