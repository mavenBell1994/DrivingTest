package com.readygo.drivingtest.handler;
import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.readygo.drivingtest.entity.User;
import com.readygo.drivingtest.serviceimpl.UserServiceImpl;

/**
 * 9.9
 * @author Hong
 *
 */
@Controller
@RequestMapping("/user")
public class UserHandler {
	@Autowired
	private UserServiceImpl usimpl ;
	
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

}
