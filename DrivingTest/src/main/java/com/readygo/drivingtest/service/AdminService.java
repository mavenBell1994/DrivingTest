package com.readygo.drivingtest.service;

import java.util.List;

import com.readygo.drivingtest.entity.Admin;
import com.readygo.drivingtest.entity.Quiz;

public interface AdminService {
	public Admin login(Admin admin);//登录  判断status 判断角色   并验证账号密码
	
	public void islogin(Admin admin);//登录后将status字段改为使用中
	
	public List<Admin> getAllAdmin();//获取所有的管理员信息
}
