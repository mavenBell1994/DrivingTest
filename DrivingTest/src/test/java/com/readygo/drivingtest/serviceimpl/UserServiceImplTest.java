package com.readygo.drivingtest.serviceimpl;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;

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
	@Autowired
	private UserServiceImpl usimpl;
	
	@Test
	public void testChecklogin() {
		User u=userservice.checkcname(new User("lc"));
		System.out.println(u);
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
		userservice.active(new User("lc"));
	}
	@Test
	public void testActive1() {
		userservice.active1(123);
	}
	/**
	 * hong
	 */
	@Test
	public void testAllUsers(){
		List<User> allUsers = usimpl.allUsers();
		for(User u:allUsers){
			System.out.println(u);
		}
	}
	
	/**
	 * hong9-12
	 * 测试添加user
	 */
	@Test
	public void testAddUser(){
		User user = new User( "go" ,"go" ,"491003@qq.com" ,"" ,"" ,"男" ,"测试地址" ,0 );
		int result = usimpl.addUser(user);
		System.out.println(result);
	}
	
	/**
	 * hong9-12
	 * 测试删除user
	 */
	@Test
	public void testDelUser(){
		Integer cid = 21;
		int result = usimpl.delUser(cid);
		System.out.println(result);
	}
	
	/**
	 * hong9-12
	 * 测试修改user
	 */
	@Test
	public void testUpdateUser(){
		User user = new User( 21,"go" ,"go" ,"491003118@qq.com" ,"" ,"" ,"男" ,"测试地址" ,0 );
		int result = usimpl.updateUser(user);
		System.out.println(result);
	}
}
