package com.dao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.User;

public class UserDAOimpl {
	
	
	@Repository
	public class UserDAOImpl implements UserDAO {

	    @Autowired
	    private SessionFactory sessionFactory;

	    @Override
	    @Transactional
	    public boolean saveUser(User user) {
	        try {
	            Session session = sessionFactory.getCurrentSession();
	            session.save(user);
	            return true;
	        } catch (Exception e) {
	            e.printStackTrace();
	            return false;
	        }
	    }

	    @Override
	    @Transactional(readOnly = true)
	    public User login(String email, String password) {
	        try {
	            Session session = sessionFactory.getCurrentSession();
	            String hql = "FROM User WHERE email = :email AND password = :password";
	            Query<User> query = session.createQuery(hql, User.class);
	            query.setParameter("email", email);
	            query.setParameter("password", password);
	            return query.uniqueResult();
	        } catch (Exception e) {
	            e.printStackTrace();
	            return null;
	        }
	    }
	}

}
