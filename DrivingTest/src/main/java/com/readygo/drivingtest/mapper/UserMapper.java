package com.readygo.drivingtest.mapper;

import java.util.List;

import com.readygo.drivingtest.entity.User;

public interface UserMapper {

	public void register(User user);

	public User checkcname(String cname);

	public void active(String cname);


	public User login(User user);
	
	public List<User> allUsers();
}
