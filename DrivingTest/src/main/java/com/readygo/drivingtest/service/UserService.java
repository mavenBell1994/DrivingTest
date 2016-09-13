package com.readygo.drivingtest.service;

import java.util.List;

import com.readygo.drivingtest.entity.User;

public interface UserService {

	public User login(User user);

	public boolean register(User user);

	public User checkcname(User user);

	public void active(User user);//激活status
	
	public void active1(Integer cid);//建立用户对应的selferror表，错题和收藏
	
	public List<User> allUsers();

	public boolean upateUserIcon(User user);

	public User selectUserById(int cid);//查询用户

/*	public boolean updateUserIcon(String location);
*/
	
	/**
	 * 增加carUser信息
	 * hong9-12
	 * @param user
	 * @return
	 */
	public int addUser(User user);
	
	/**
	 * 删除carUser信息
	 * hong9-12
	 * @param cid
	 * @return
	 */
	public int delUser(int cid);
	
	/**
	 * 修改carUser信息
	 * hong9-12
	 * @param user
	 * @return
	 */
	public int updateUser(User user);
	
}
