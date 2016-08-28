package com.readygo.drivingtest.entity;

public class User {
	private Integer cid;
	private String cname;
	private String cpwd;
	private String email;
	private String tel;
	private String sex;
	private String addr;
	private Integer status;
	private String utemp;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String cname, String cpwd) {
		super();
		this.cname = cname;
		this.cpwd = cpwd;
	}
	public User(String cname, String cpwd, String email) {
		super();
		this.cname = cname;
		this.cpwd = cpwd;
		this.email = email;
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
	public String getUtemp() {
		return utemp;
	}
	public void setUtemp(String utemp) {
		this.utemp = utemp;
	}
	@Override
	public String toString() {
		return "User [cid=" + cid + ", cname=" + cname + ", cpwd=" + cpwd + ", email=" + email + ", tel=" + tel
				+ ", sex=" + sex + ", addr=" + addr + ", status=" + status + ", utemp=" + utemp + "]";
	}
	
}
