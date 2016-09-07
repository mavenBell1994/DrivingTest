package com.readygo.drivingtest.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.readygo.drivingtest.entity.Admin;
import com.readygo.drivingtest.entity.User;
import com.readygo.drivingtest.mapper.AdminMapper;
import com.readygo.drivingtest.mapper.UserMapper;
import com.readygo.drivingtest.service.AdminService;
import com.readygo.drivingtest.service.UserService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper mapper;
	
	//返回结果集
	@Override
	public Admin login(Admin admin) {
		return mapper.login(admin);
	}
	
	//登录后将status字段改为使用中
	@Override
	public void islogin(Admin admin) {
		mapper.islogin(admin);
	}
}
