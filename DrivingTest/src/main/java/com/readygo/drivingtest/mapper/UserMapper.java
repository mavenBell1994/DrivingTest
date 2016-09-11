package com.readygo.drivingtest.mapper;

import java.util.List;

import com.readygo.drivingtest.entity.User;

public interface UserMapper {

	public void register(User user);

	public User checkcname(User user);

	public void active(User user);

	public void active1(Integer cid);
	
	public User login(User user);
	
	public List<User> allUsers();
}
