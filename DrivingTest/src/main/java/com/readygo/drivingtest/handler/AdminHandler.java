package com.readygo.drivingtest.handler;
import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.readygo.drivingtest.entity.Admin;
import com.readygo.drivingtest.serviceimpl.AdminServiceImpl;

/**
 * 后台admin的hangdler
 * @author Hong
 *
 */
@Controller
@RequestMapping("/backadmin")
public class AdminHandler {
	@Autowired
	private AdminServiceImpl asimpl ;
	
	/**
	 * 获取所有admin的信息
	 * @param out
	 */
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

	/**
	 * 增加admin
	 * @param out
	 */
	@RequestMapping("/addAdmin")
	public void addAdmin(Admin admin,PrintWriter out){
		int result = asimpl.addAdmin(admin);
		if( result == 1 ){
			out.println( true );
		}else{
			out.println(false);
		}
		out.flush();
		out.close();
	}
	
	/**
	 * 删除admin
	 * @param out
	 */
	@RequestMapping("/delAdmin")
	public void delAdmin(int aid,PrintWriter out){
		int result = asimpl.delAdmin(aid);
		if( result == 1 ){
			out.println( true );
		}else{
			out.println(false);
		}
		out.flush();
		out.close();
	}
	
	/**
	 * 修改admin
	 * @param out
	 */
	@RequestMapping("/updateAdmin")
	public void updateAdmin(Admin admin,PrintWriter out){
		int result = asimpl.updateAdmin(admin);
		if( result == 1 ){
			out.println( true );
		}else{
			out.println(false);
		}
		out.flush();
		out.close();
	}
	

}
