package com.readygo.drivingtest.service;

import java.util.List;

import com.readygo.drivingtest.entity.User;

public interface UserService {

	public User login(User user);

	public boolean register(User user);

	public User checkcname(User user);

	public void active(User user);//激活status
	
	public void active1(Integer cid);//建立用户对应的selferror表，错题和收藏
	
	public List<User> allUsers();
}
