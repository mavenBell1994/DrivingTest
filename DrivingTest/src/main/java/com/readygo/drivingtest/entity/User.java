package com.readygo.drivingtest.entity;

public class User {
	private Integer cid;
	private String cname;
	private String cpwd;
	private String email;
	private String icon;
	private String tel;
	private String sex;
	private String addr;
	private Integer status;
	private String regdate;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(Integer cid, String cname, String cpwd, String email, String icon, String tel, String sex, String addr,
			Integer status, String regdate) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.cpwd = cpwd;
		this.email = email;
		this.icon = icon;
		this.tel = tel;
		this.sex = sex;
		this.addr = addr;
		this.status = status;
		this.regdate = regdate;
	}
	public User(String cname, String cpwd) {
		this.cname = cname;
		this.cpwd = cpwd;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCpwd() {
		return cpwd;
	}
	public void setCpwd(String cpwd) {
		this.cpwd = cpwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "User [cid=" + cid + ", cname=" + cname + ", cpwd=" + cpwd + ", email=" + email + ", icon=" + icon
				+ ", tel=" + tel + ", sex=" + sex + ", addr=" + addr + ", status=" + status + ", regdate=" + regdate
				+ "]";
	}
	
}
