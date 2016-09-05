package com.readygo.drivingtest.handler;



import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.readygo.drivingtest.entity.User;
import com.readygo.drivingtest.service.UserService;

@Controller
@RequestMapping("/login")
@SessionAttributes(value={"cname"})
public class LoginHandler {
	@Autowired
	private UserService userService;
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
	
}
