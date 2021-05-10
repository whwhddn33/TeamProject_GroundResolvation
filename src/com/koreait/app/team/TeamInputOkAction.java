package com.koreait.app.team;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;

public class TeamInputOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward=new ActionForward();
		String captainName=request.getParameter("captainname");
		System.out.println(captainName);
		PrintWriter out=response.getWriter();
		boolean check=true;
		
		if(captainName==null || captainName=="") {
			out.print("fail");
			check=false;
			System.out.println("팀명 없음");
		}else {
			System.out.println("if문 진입 실패");
		}
		return null;
	}
}	
