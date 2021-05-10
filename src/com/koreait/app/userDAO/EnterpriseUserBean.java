package com.koreait.app.userDAO;

public class EnterpriseUserBean {
	private String epuserid;
	private String epuserpw;
	private String epusername;
	private String epuserphone;
	private String epusernumber;//사업자번호
	
	public EnterpriseUserBean() {};
	
	public String getEpuserid() {
		return epuserid;
	}
	public void setEpuserid(String epuserid) {
		this.epuserid = epuserid;
	}
	public String getEpuserpw() {
		return epuserpw;
	}
	public void setEpuserpw(String epuserpw) {
		this.epuserpw = epuserpw;
	}
	public String getEpusername() {
		return epusername;
	}
	public void setEpusername(String epusername) {
		this.epusername = epusername;
	}
	public String getEpuserphone() {
		return epuserphone;
	}
	public void setEpuserphone(String epuserphone) {
		this.epuserphone = epuserphone;
	}
	public String getEpusernumber() {
		return epusernumber;
	}
	public void setEpusernumber(String epusernumber) {
		this.epusernumber = epusernumber;
	}
}
