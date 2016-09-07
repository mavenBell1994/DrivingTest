package com.readygo.drivingtest.mapper;

import com.readygo.drivingtest.entity.User;

public interface UserMapper {

	void register(User user);

	User checkcname(String cname);

	void active(String cname);

	User login(User user);

}
