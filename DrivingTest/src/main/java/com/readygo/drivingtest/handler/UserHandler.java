package com.readygo.drivingtest.handler;

import java.io.PrintWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.readygo.drivingtest.entity.User;
import com.readygo.drivingtest.service.UserService;

@Controller
@RequestMapping("/user")
public class UserHandler {
	@Autowired
	private UserService userService;
	

	@RequestMapping("/login")
	public void login(User user,ModelMap map){
		
	}
	
	@RequestMapping("/register")
	public String register(User user,ModelMap map){
		int i=userService.register(user);
		if(i==1){
			map.put("Msg", "账号注册成功,请前往邮箱激活后登录！");
			return "index";
		}
		map.put("errorMsg", "账号已存在");
		return "register";
	}
}
