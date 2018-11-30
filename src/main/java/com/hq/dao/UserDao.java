package com.hq.dao;

import java.util.List;


import com.hq.model.User;

public interface UserDao {

	
	public void save(User user);
	public User findById(int uid);
	public List<User> findAll();
	

}
