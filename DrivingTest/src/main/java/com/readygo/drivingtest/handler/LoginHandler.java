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
	public void checkcname(HttpServletRequest request,PrintWriter out,HttpSession session){
		boolean status;
		String str=request.getParameter("verify");
		String code=(String) session.getAttribute("signcode");
		if(str.equals(code)){
			status=true;
		}else{
			status=false;
		}
		out.print(status);
		out.flush();
		out.close();
	}
	@RequestMapping("/login")
	@ResponseBody
	public boolean login(@ModelAttribute(value="cname")User user,ModelMap map){
		if(userService.login(user)!=null){
			System.out.println(userService.login(user)+"查询到数据");
			map.put("cname", userService.login(user));

			return true;
		}else{
			System.out.println(userService.login(user)+"未查询");
			map.remove("cname");
			return false;
		}
	}
}
