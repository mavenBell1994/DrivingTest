package com.readygo.drivingtest.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.readygo.drivingtest.entity.User;
import com.readygo.drivingtest.service.UserService;

@Controller
@RequestMapping("/user")
public class UserHandler {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public String login(User user,ModelMap map){
		User u=userService.login(user);
		if(u==null){
			map.put("errorMsg", "账号或密码错误！");
			return null;
		}
		if(u.getStatus()==0){
			map.put("errorMsg", "账号未激活，请激活后重新登录！");
			return "login";
		}
		
			return "forward:/index.jsp";
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
