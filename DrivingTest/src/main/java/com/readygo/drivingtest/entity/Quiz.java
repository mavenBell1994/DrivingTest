package com.readygo.drivingtest.entity;

public class Quiz {

	private Integer qid;
	private String question;
	private String answer;
	private Integer pid;
	private String pic;
	private String qtype;
	private String explain;
	private Integer errTotal;
	public Integer getQid() {
		return qid;
	}
	public void setQid(Integer qid) {
		this.qid = qid;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getQtype() {
		return qtype;
	}
	public void setQtype(String qtype) {
		this.qtype = qtype;
	}
	public Integer getErrTotal() {
		return errTotal;
	}
	public void setErrTotal(Integer errTotal) {
		this.errTotal = errTotal;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public Quiz() {
	}
	
	public Quiz(Integer qid, String question, String answer, Integer pid, String pic, String qtype, String explain,
			Integer errTotal) {
		this.qid = qid;
		this.question = question;
		this.answer = answer;
		this.pid = pid;
		this.pic = pic;
		this.qtype = qtype;
		this.explain = explain;
		this.errTotal = errTotal;
	}

	public Quiz(String question, String answer, Integer pid, String pic, String qtype, String explain,
			Integer errTotal) {
		this.question = question;
		this.answer = answer;
		this.pid = pid;
		this.pic = pic;
		this.qtype = qtype;
		this.explain = explain;
		this.errTotal = errTotal;
	}
	@Override
	public String toString() {
		return "Quiz [qid=" + qid + ", question=" + question + ", answer=" + answer + ", pid=" + pid + ", pic=" + pic
				+ ", qtype=" + qtype + ", explain=" + explain + ", errTotal=" + errTotal + "]";
	}


	



}
