package com.readygo.drivingtest.handler;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.readygo.drivingtest.entity.User;
import com.readygo.drivingtest.service.UserService;

@Controller
@RequestMapping("/login")
@SessionAttributes(value={"cname"})
public class LoginHandler {
	@Autowired
	private UserService userService;
	
	@ModelAttribute
	public void getModel(ModelMap map){
			map.put("cname",new User());
	}
	//判断验证码是否正确
	@RequestMapping("/checkverify")
	@ResponseBody
	public boolean checkcname(HttpServletRequest request,PrintWriter out,HttpSession session){
		String str=request.getParameter("verify");
		String code=(String) session.getAttribute("signcode");
		if(str.equals(code)){
			return true;
		}else{
			return false;
		}
	}
	@RequestMapping("/login")
	@ResponseBody
	public boolean login(@ModelAttribute(value="cname")User user,ModelMap map){
		if(userService.login(user)!=null){
			map.put("cname", userService.login(user));
			return true;
		}else{
			map.remove("cname");
			return false;
		}
	}
}
