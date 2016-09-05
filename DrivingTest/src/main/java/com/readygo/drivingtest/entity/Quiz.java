package com.readygo.drivingtest.entity;

public class Quiz {
	private int qid;
	private String question;
	private String answer;
	private int pid;
	private String pic;
	private String qtype;
	private int errTotal;
	private int rn;

	public Quiz() {
	}

	public Quiz(int qid, String question, String answer, int pid, String pic, String qtype, int errTotal, int rn,
			int totalDiff) {
		super();
		this.qid = qid;
		this.question = question;
		this.answer = answer;
		this.pid = pid;
		this.pic = pic;
		this.qtype = qtype;
		this.errTotal = errTotal;
		this.rn = rn;
	}

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
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

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
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

	public int getErrTotal() {
		return errTotal;
	}

	public void setErrTotal(int errTotal) {
		this.errTotal = errTotal;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	@Override
	public String toString() {
		return "Quiz \n [qid=" + qid + ", question=" + question + ", answer=" + answer + ", pid=" + pid + ", pic=" + pic
				+ ", qtype=" + qtype + ", errTotal=" + errTotal + ", rn=" + rn + "]";
	}
	
}
