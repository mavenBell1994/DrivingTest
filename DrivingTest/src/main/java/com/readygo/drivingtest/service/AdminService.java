package com.readygo.drivingtest.service;

import java.util.List;

import com.readygo.drivingtest.entity.Admin;

public interface AdminService {
	public Admin login(Admin admin);//登录  判断status 判断角色   并验证账号密码
	
	public void islogin(Admin admin);//登录后将status字段改为使用中
	
	public List<Admin> getAllAdmin();//获取所有的管理员信息
	
	/**
	 * hong
	 * 添加admin
	 * @param admin
	 * @return
	 */
	public int addAdmin(Admin admin);
	
	/**
	 * 根据指定aid删除admin
	 * hong9-12
	 * @param aid
	 * @return
	 */
	public int delAdmin(int aid);
	
	/**
	 * 修改admin
	 * @param admin
	 * @return
	 */
	public int updateAdmin(Admin admin);
	
	/**
	 * 根据id获取指定admin
	 * @param aid
	 * @return
	 */
	public Admin getAdminById(int aid);
}
