package com.readygo.drivingtest.mapper;

import java.util.List;

import com.readygo.drivingtest.entity.User;

public interface UserMapper {

	public User login(User user);

	public boolean register(User user);

	public User checkcname(String cname);

	public int active(String cname);
	
	public List<User> allUsers();
}
