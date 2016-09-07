package com.readygo.drivingtest.handler;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.readygo.drivingtest.entity.Admin;
import com.readygo.drivingtest.serviceimpl.AdminServiceImpl;

@Controller
@RequestMapping("/admin")
public class AdminHandler {
	@Autowired
	private AdminServiceImpl asimpl ;
	
	@RequestMapping("/allAdmin")
	public void allAdmin(){
		List<Admin> allAdmin = asimpl.getAllAdmin();
		
	}

}
