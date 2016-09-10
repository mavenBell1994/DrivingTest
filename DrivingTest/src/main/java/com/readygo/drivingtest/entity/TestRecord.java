package com.readygo.drivingtest.entity;
/**
 * 9-10
 * @author hong
 * 测试成绩表实体类
 */
public class TestRecord {
	private Integer recId;
	private Integer cid	;
	private String testType ;
	private String testKind ;
	private String testDate ;
	private int errorCount;
	private String qID ;
	private String recTemp;
	public Integer getRecId() {
		return recId;
	}
	public void setRecId(Integer recId) {
		this.recId = recId;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getTestType() {
		return testType;
	}
	public void setTestType(String testType) {
		this.testType = testType;
	}
	public String getTestKind() {
		return testKind;
	}
	public void setTestKind(String testKind) {
		this.testKind = testKind;
	}
	public String getTestDate() {
		return testDate;
	}
	public void setTestDate(String testDate) {
		this.testDate = testDate;
	}
	public int getErrorCount() {
		return errorCount;
	}
	public void setErrorCount(int errorCount) {
		this.errorCount = errorCount;
	}
	public String getqID() {
		return qID;
	}
	public void setqID(String qID) {
		this.qID = qID;
	}
	public String getRecTemp() {
		return recTemp;
	}
	public void setRecTemp(String recTemp) {
		this.recTemp = recTemp;
	}
	public TestRecord() {
	}
	
	public TestRecord(Integer recId, Integer cid, String testType, String testKind, String testDate, int errorCount,
			String qID, String recTemp) {
		this.recId = recId;
		this.cid = cid;
		this.testType = testType;
		this.testKind = testKind;
		this.testDate = testDate;
		this.errorCount = errorCount;
		this.qID = qID;
		this.recTemp = recTemp;
	}
	
	
	
}
