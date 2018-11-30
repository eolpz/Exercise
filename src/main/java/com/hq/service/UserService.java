package com.hq.service;

import java.util.List;

import com.hq.model.User;

public interface UserService {

	public void save(User user);

	public User getUserById(int uid);

	public List<User> getUsers();
}
