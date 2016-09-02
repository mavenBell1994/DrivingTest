package com.readygo.drivingtest.handler;

import java.io.PrintWriter;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.readygo.drivingtest.entity.User;
import com.readygo.drivingtest.service.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes(value={"cname"})
public class RegisterHandler {
	@Autowired
	private UserService userService;
	@Autowired
	private JavaMailSender mailSender;
	
	@ModelAttribute
	public void getModel(ModelMap map){
		map.put("cname",new User());
	}
	
	//验证账号是否已存在的处理类
	@RequestMapping("/checkcname")
	public void checkcname(HttpServletRequest request,PrintWriter out){
		String cname=request.getParameter("cname");
		out.print(userService.checkcname(cname));
		out.flush();
		out.close();
	}
	//激活邮箱并登录
	@RequestMapping(value="/active",params={"cname"})
	public String active(@ModelAttribute(value="cname")User user,ModelMap map){
		userService.active(user.getCname());
		User u=userService.checkcname(user.getCname());
		map.put("cname",u.getCname());
		System.out.println(user.getCname());
		System.out.println(u.getCname());
		return "redirect:/index.jsp";
	}
	//注册类
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(User user,PrintWriter out,HttpServletRequest request){
		if( userService.register(user) ){
			//成功注册，发送邮件，激活账号
			//接收激活用户的连接地址
			
			activeAccountMail(
					"激活用户",
					getSendContent(request,user.getCname()),
					"18274763345@163.com",
					user.getEmail());
			return "redirect:/index.jsp";
		}
		return "register";
	}
	/**
	 * 生成用户激活地址
	 * @param request
	 * @param username
	 * @return
	 */
	private String getSendContent(HttpServletRequest request, String cname) {
		String activeURL = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() +
				request.getContextPath() + "/user/active?cname=" + cname;
		activeURL=activeURL+"\n如果点击链接失败，请把此链接拷贝到地址栏激活。";
		/*activeURL = String.format("'%s',如果点击链接失败，请把此链接  '%s'拷贝到地址栏激活。。。", 
				activeURL,activeURL,activeURL);*/
		return activeURL;
	}

	/**
	 * 发送激活邮件
	 */
	private void activeAccountMail(String subject, String content, String from, String to) {
		try {
			MimeMessage mm = mailSender.createMimeMessage();
			MimeMessageHelper mmh = new MimeMessageHelper(mm,true);
			mmh.setTo(to);//设置邮件接收者
			mmh.setFrom(from);
			mmh.setSubject(subject);//设置主题
			mmh.setText(content);//设置内容
			mailSender.send(mm);//发送邮件
			
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
	}
}
