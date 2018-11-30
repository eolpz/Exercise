package com.hq.service.impl;


import java.util.List;

import com.hq.dao.UserDao;
import com.hq.model.User;
import com.hq.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User getUserById(int uid) {
		// TODO Auto-generated method stub
		return userDao.findById(uid);
	}

	@Override
	public List<User> getUsers() {
		
		return userDao.findAll();
	}
	@Override
	public void save(User user) {
		userDao.save(user);
		
	}

}
