package com.readygo.drivingtest.mapper;

import java.util.List;

import com.readygo.drivingtest.entity.Admin;
import com.readygo.drivingtest.entity.Quiz;

public interface AdminMapper {
	public Admin login(Admin admin);//登录  判断status 判断角色   并验证账号密码
	public void islogin(Admin admin);//登录后将status字段改为使用中
}
