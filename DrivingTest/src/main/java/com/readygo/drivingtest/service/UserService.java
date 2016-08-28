package com.readygo.drivingtest.service;

import org.springframework.stereotype.Service;

import com.readygo.drivingtest.entity.User;

public interface UserService {

	User login(User user);

	int register(User user);
	
}
