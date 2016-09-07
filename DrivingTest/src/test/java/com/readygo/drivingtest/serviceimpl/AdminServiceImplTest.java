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
	@Test
	public void testFindAllDiffQuizs() {
		List<Admin> allAdmin = as.getAllAdmin();
		System.out.println( allAdmin );
	}

}
