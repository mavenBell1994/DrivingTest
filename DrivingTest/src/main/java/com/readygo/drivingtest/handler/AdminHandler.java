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
@RequestMapping("/admin")
public class AdminHandler {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/allAdmin")
	public void allAdmin(){
		
	}

}
