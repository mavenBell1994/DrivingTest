package com.readygo.drivingtest.handler;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.readygo.drivingtest.entity.Admin;
import com.readygo.drivingtest.entity.User;
import com.readygo.drivingtest.serviceimpl.AdminServiceImpl;

/**
 * 后台admin的hangdler
 * 
 * @author Hong
 *
 */
@Controller
@RequestMapping("/backadmin")
@SessionAttributes(value = {"admin" })
public class AdminHandler {
	@Autowired
	private AdminServiceImpl adminService;

	/**
	 * 获取所有admin的信息
	 * 
	 * @param out
	 */
	@ModelAttribute
	public void getModel(ModelMap map) {
		map.put("admin", new Admin());
	}

	@RequestMapping("/allAdmin")
	@ResponseBody
	public List<Admin> allAdmin(PrintWriter out) {
		return adminService.getAllAdmin();
	}

	/**
	 * 增加admin
	 * 
	 * @param out
	 */
	@RequestMapping("/addAdmin")
	@ResponseBody
	public boolean addAdmin(Admin admin) {
		int result = adminService.addAdmin(admin);
		if (result == 1) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 删除admin
	 * 
	 * @param out
	 */
	@RequestMapping("/delAdmin")
	@ResponseBody
	public boolean delAdmin(int aid, PrintWriter out) {
		int result = adminService.delAdmin(aid);
		if (result == 1) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 修改admin
	 * 
	 * @param out
	 */
	@RequestMapping("/updateAdmin")
	@ResponseBody
	public boolean updateAdmin(Admin admin) {
		int result = adminService.updateAdmin(admin);
		if (result == 1) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 获取指定ID的admin
	 * 
	 * @param out
	 */
	@RequestMapping("/getAdminById")
	@ResponseBody
	public Admin getAdminById(int aid) {
		return adminService.getAdminById(aid);
	}
	
	@RequestMapping("/login")
	@ResponseBody
	/*
	 * lc
	 */
	public int login(@ModelAttribute(value="admin") Admin admin, ModelMap map) {
		System.out.println("########");
		Admin a = adminService.login(admin);
		if (a == null) {
			return 0;
		} else if (a.getStatus() == 0) {
			return -1;
		} else {
			map.put("admin", a);
			adminService.islogin(a.getAname());
			return 1;
		}
	}
	@RequestMapping("/quit")
	@ResponseBody
	public boolean quitback(HttpSession session,String aname) {
		adminService.quit(aname);
		System.out.println(aname);
		session.removeAttribute("admin");
		return true;
	}
	
}
