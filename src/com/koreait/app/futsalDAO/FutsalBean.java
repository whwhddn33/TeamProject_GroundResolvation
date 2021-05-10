package com.koreait.app.futsalDAO;

public class FutsalBean {
	private int groundnum;//구장번호
	private String groundname;//이름
	private String groundaddr;//주소
	private int groundfee;//요금
	
	
	public int getGroundnum() {
		return groundnum;
	}
	public void setGroundnum(int groundnum) {
		this.groundnum = groundnum;
	}
	public String getGroundname() {
		return groundname;
	}
	public void setGroundname(String groundname) {
		this.groundname = groundname;
	}
	public String getGroundlocation() {
		return groundaddr;
	}
	public void setGroundlocation(String groundlocation) {
		this.groundaddr = groundlocation;
	}
	public int getGroundfee() {
		return groundfee;
	}
	public void setGroundfee(int groundfee) {
		this.groundfee = groundfee;
	}
	
	
}
