package com.koreait.app.futsalDAO;

public class ReservationBean {
	private int 		reservation;
	private String 		userid;
	private int 		groundnum;
	private String 		groundtime;
	private String 		groundfee;
	private String 		rservationdate;
	private String		epuserid;
	public int getReservation() {
		return reservation;
	}
	public void setReservation(int reservation) {
		this.reservation = reservation;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getGroundnum() {
		return groundnum;
	}
	public void setGroundnum(int groundnum) {
		this.groundnum = groundnum;
	}
	public String getGroundtime() {
		return groundtime;
	}
	public void setGroundtime(String groundtime) {
		this.groundtime = groundtime;
	}
	public String getGroundfee() {
		return groundfee;
	}
	public void setGroundfee(String groundfee) {
		this.groundfee = groundfee;
	}
	public String getRservationdate() {
		return rservationdate;
	}
	public void setRservationdate(String rservationdate) {
		this.rservationdate = rservationdate;
	}
	public String getEpuserid() {
		return epuserid;
	}
	public void setEpuserid(String epuserid) {
		this.epuserid = epuserid;
	}
	
}
