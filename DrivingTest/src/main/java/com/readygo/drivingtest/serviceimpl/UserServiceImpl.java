package com.readygo.drivingtest.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.readygo.drivingtest.entity.User;
import com.readygo.drivingtest.mapper.UserMapper;
import com.readygo.drivingtest.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper mapper;
	@Override
	public User login(User user) {
		return mapper.login(user);
	}
	@Override
	public boolean register(User user) {
		try {
			mapper.register(user);
		} catch (Exception e) {
			return false;
		}
		return true;
	}
	@Override
	public User checkcname(String cname) {
		
		return mapper.checkcname(cname);
	}
}
