package com.readygo.drivingtest.entity;

public class Admin {
	private Integer aid;
	private String aname;
	private String apwd;
	private Integer issuper;
	private Integer status;
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Admin(Integer aid, String aname, String apwd, Integer issuper, Integer status) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.apwd = apwd;
		this.issuper = issuper;
		this.status = status;
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getApwd() {
		return apwd;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	}
	public Integer getIssuper() {
		return issuper;
	}
	public void setIssuper(Integer issuper) {
		this.issuper = issuper;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", aname=" + aname + ", apwd=" + apwd + ", issuper=" + issuper + ", status="
				+ status + "]";
	}
}
