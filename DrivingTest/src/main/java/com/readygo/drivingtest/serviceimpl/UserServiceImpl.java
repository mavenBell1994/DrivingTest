package com.readygo.drivingtest.serviceimpl;

import java.util.List;

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
	public User checkcname(User user) {
		
		return mapper.checkcname(user);
	}
	@Override
	public void active(User user) {
			mapper.active(user);
	}
	/**
	 * hong
	 */
	@Override
	public List<User> allUsers() {
		return mapper.allUsers();
	}
	@Override
	public void active1(Integer cid) {
		mapper.active1(cid);
	}
}
