package com.readygo.drivingtest.serviceimpl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.readygo.drivingtest.entity.User;
import com.readygo.drivingtest.mapper.UserMapper;
import com.readygo.drivingtest.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UserServiceImplTest {
	@Autowired
	private UserService userservice;
	@Autowired
	private UserMapper userMapper;
	@Test
	public void testChecklogin() {
		User user=userservice.checkcname("lc");
		System.out.println(user);
	}
/*	@Test
	public void testRegister() {
		boolean i=userservice.register(new User("lcac","123456","94003@qq.com"));
		System.out.println(i);
	}
	@Test
	public void testRegister1() {
		userMapper.register(new User("lcac","123456","94003@qq.com"));
		
	}*/
	@Test
	public void testActive() {
		userMapper.active("zx");
		
	}
}
