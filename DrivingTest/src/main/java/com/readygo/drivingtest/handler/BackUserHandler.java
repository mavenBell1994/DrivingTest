package com.readygo.drivingtest.handler;
import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.readygo.drivingtest.entity.User;
import com.readygo.drivingtest.entity.User;
import com.readygo.drivingtest.serviceimpl.UserServiceImpl;

/**
 * 9.9
 * 后台用户处理的hangdler
 * @author Hong
 *
 */
@Controller
@RequestMapping("/backuser")
public class BackUserHandler {
	@Autowired
	private UserServiceImpl usimpl ;
	
	/**
	 * 查看所有carUser的信息
	 * @param out
	 */
	@RequestMapping("/allUsers")
	public void allUsers(PrintWriter out){
		List<User> allUsers = usimpl.allUsers();
		for(User a : allUsers){
			System.out.println(a);
		}
		Gson gson=new Gson();
		out.println(gson.toJson(allUsers));
		out.flush();
		out.close();
	}
	
	/**
	 * 增加carUser信息
	 * hong9-12
	 * @param out
	 */
	@RequestMapping("/addUser")
	public void addUser(User user,PrintWriter out){
		int result = usimpl.addUser( user );
		if(result==1){
			out.println(true);
		}else{
			out.println(false);			
		}
		out.flush();
		out.close();
	}
	
	/**
	 * 删除carUser信息
	 * hong9-12
	 * @param out
	 */
	@RequestMapping("/delUser")
	public void delUser(int cid,PrintWriter out){
		int result = usimpl.delUser( cid );
		if(result==1){
			out.println(true);
		}else{
			out.println(false);			
		}
		out.flush();
		out.close();
	}
	
	/**
	 * 修改carUser信息
	 * hong9-12
	 * @param out
	 */
	@RequestMapping("/updateUser")
	public void updateUser(User user,PrintWriter out){
		int result = usimpl.updateUser( user );
		if(result==1){
			out.println(true);
		}else{
			out.println(false);			
		}
		out.flush();
		out.close();
	}
	/**
	 * 获取指定ID的user
	 * @param out
	 */
	@RequestMapping("/getUserById")
	public void getUserById(int cid,PrintWriter out){
		User user = usimpl.getUserById(cid);
		Gson gson=new Gson();
		out.println(gson.toJson(user));
		out.flush();
		out.close();
	}
}
