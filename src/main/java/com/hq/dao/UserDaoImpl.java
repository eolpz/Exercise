package com.hq.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.hq.model.User;

public class UserDaoImpl implements UserDao {
	
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	@Override
	public User findById(int uid) {
		
		 return getSession().get(User.class, uid);
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return getSession().createQuery("from User").list();
	}

	@Override
	public void save(User user) {
		// TODO Auto-generated method stub
		getSession().save(user);
	}

	

}
