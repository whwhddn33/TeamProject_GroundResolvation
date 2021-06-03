package com.koreait.app.futsalDAO;

public class usageStatusBean {
	private String statusnum;
	private String groundnum;
	private String groundtime;
	private String reservationnum;
	private String reservationdate;
	
	
	
	public String getReservationdate() {
		return reservationdate;
	}

	public void setReservationdate(String reservationdate) {
		this.reservationdate = reservationdate;
	}

	public usageStatusBean() {}
	
	public String getStatusnum() {
		return statusnum;
	}
	public void setStatusnum(String statusnum) {
		this.statusnum = statusnum;
	}
	public String getGroundnum() {
		return groundnum;
	}
	public void setGroundnum(String groundnum) {
		this.groundnum = groundnum;
	}
	public String getGroundtime() {
		return groundtime;
	}
	public void setGroundtime(String groundtime) {
		this.groundtime = groundtime;
	}
	public String getReservationnum() {
		return reservationnum;
	}
	public void setReservationnum(String reservationnum) {
		this.reservationnum = reservationnum;
	}
}
