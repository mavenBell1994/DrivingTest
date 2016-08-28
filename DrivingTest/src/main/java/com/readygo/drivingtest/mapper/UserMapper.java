package com.readygo.drivingtest.mapper;

import com.readygo.drivingtest.entity.User;

public interface UserMapper {

	User login(User user);

	int register(User user);

}
