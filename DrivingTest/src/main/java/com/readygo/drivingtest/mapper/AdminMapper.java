package com.readygo.drivingtest.mapper;

import java.util.List;

import com.readygo.drivingtest.entity.Admin;

public interface AdminMapper {
	public Admin login(Admin admin);//登录  判断status 判断角色   并验证账号密码
	
	public void islogin(String aname);//登录后将status字段改为使用中
	
	public List<Admin> getAllAdmin();//获取所有的管理员信息
	
	/**
	 * hong
	 * 添加admin
	 * @param admin
	 * @return
	 */
	public void addAdmin(Admin admin);
	
	/**
	 * 根据指定aid删除admin
	 * hong9-12
	 * @param aid
	 * @return
	 */
	public void delAdmin(int aid);
	
	/**
	 * 修改admin
	 * @param admin
	 * @return
	 */
	public void updateAdmin(Admin admin);
	
	/**
	 * 根据id获取指定admin
	 * @param aid
	 * @return
	 */
	public Admin getAdminById(int aid);

	public void quit(String aname);
}
