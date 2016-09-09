package com.readygo.drivingtest.handler;
import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.readygo.drivingtest.entity.Admin;
import com.readygo.drivingtest.serviceimpl.AdminServiceImpl;

@Controller
@RequestMapping("/admin")
public class AdminHandler {
	@Autowired
	private AdminServiceImpl asimpl ;
	
	@RequestMapping("/allAdmin")
	public void allAdmin(PrintWriter out){
		List<Admin> allAdmin = asimpl.getAllAdmin();
		for(Admin a : allAdmin){
			System.out.println(a);
		}
		Gson gson=new Gson();
		out.println(gson.toJson(allAdmin));
		out.flush();
		out.close();
	}

}
