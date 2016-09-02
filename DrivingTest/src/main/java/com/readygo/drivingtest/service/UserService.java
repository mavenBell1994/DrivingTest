package com.readygo.drivingtest.service;

import org.springframework.stereotype.Service;

import com.readygo.drivingtest.entity.User;

public interface UserService {

	User login(User user);

	boolean register(User user);

	User checkcname(String cname);

	int active(String cname);
}
