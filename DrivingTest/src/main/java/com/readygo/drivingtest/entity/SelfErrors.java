package com.readygo.drivingtest.entity;

public class SelfErrors {
	private int cid;
	private String errorSave;
	private String save;

	public SelfErrors() {
	}

	public SelfErrors(int cid, String errorSave, String save) {
		super();
		this.cid = cid;
		this.errorSave = errorSave;
		this.save = save;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getErrorSave() {
		return errorSave;
	}

	public void setErrorSave(String errorSave) {
		this.errorSave = errorSave;
	}

	public String getSave() {
		return save;
	}

	public void setSave(String save) {
		this.save = save;
	}

	@Override
	public String toString() {
		return "SelfErrors [cid=" + cid + ", errorSave=" + errorSave + ", save=" + save + "]";
	}

}
