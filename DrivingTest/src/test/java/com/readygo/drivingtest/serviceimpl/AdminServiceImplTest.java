package com.readygo.drivingtest.serviceimpl;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.readygo.drivingtest.entity.Admin;
import com.readygo.drivingtest.service.AdminService;
/**
 * 测试adminMapper等
 * @author Hong
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class AdminServiceImplTest {
	@Autowired
	private AdminService as;
	/**
	 * 查看所有admin的信息
	 */
	@Test
	public void testGetAllAdmin() {
		List<Admin> allAdmin = as.getAllAdmin();
		System.out.println( allAdmin );
	}
	
	/**
	 * 插入admin的信息
	 */
	@Test
	public void testAddAdmin() {
		Admin admin = new Admin( "test","a",0,1 );
		int result = as.addAdmin(admin);
		System.out.println( result );
	}
	
	/**
	 * 删除admin的信息
	 */
	@Test
	public void testDeleteAdmin() {
		int result = as.delAdmin(1004);
		System.out.println( result );
	}
	
	
	/**
	 * 更新admin的信息
	 */
	@Test
	public void testUpdateAdmin() {
		Admin admin = new Admin( 1004,"test","aa",0,1 );
		int result = as.updateAdmin(admin);
		System.out.println( result );
	}
	
	/**
	 * 查询指定admin的信息
	 */
	@Test
	public void testGetAdminById() {
		int aid = 1002;
		Admin a = as.getAdminById(aid);
		System.out.println( a );
	}
	
}
