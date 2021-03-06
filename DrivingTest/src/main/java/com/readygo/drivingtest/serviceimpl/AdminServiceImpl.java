package com.readygo.drivingtest.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.readygo.drivingtest.entity.Admin;
import com.readygo.drivingtest.mapper.AdminMapper;
import com.readygo.drivingtest.service.AdminService;

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
	public void islogin(String aname) {
		mapper.islogin(aname);
	}
	
	/**
	 * 查询出所有的管理员
	 * hong
	 */
	@Override
	public List<Admin> getAllAdmin() {
		return mapper.getAllAdmin();
	}
	
	/**
	 * 添加admin
	 * hong9-12
	 * @param admin
	 * @return
	 */
	@Override
	public int addAdmin(Admin admin) {
		try {
			mapper.addAdmin(admin);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}
	
	/**
	 * 根据aid删除指定admin
	 * hong9-12
	 * @param aid
	 * @return
	 */
	@Override
	public int delAdmin(int aid) {
		try {
			mapper.delAdmin(aid);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}
	
	/**
	 * 修改admin
	 * @param admin
	 * @return
	 */
	@Override
	public int updateAdmin(Admin admin) {
		try {
			mapper.updateAdmin(admin);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}
	

	/**
	 * 根据id获取指定admin
	 * @param aid
	 * @return
	 */
	@Override
	public Admin getAdminById(int aid) {
		return mapper.getAdminById(aid);
	}

	@Override
	public void quit(String aname) {
		mapper.quit(aname);
	}

}
