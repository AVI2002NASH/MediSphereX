package com.dao;

import com.model.User;

public interface UserDAO {
    boolean saveUser(User user);
    User login(String email, String password);
}
