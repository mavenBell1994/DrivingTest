package com.readygo.drivingtest.service;

import com.readygo.drivingtest.entity.User;

public interface UserService {

	User login(User user);

	boolean register(User user);

	User checkcname(String cname);

	int active(String cname);
}
