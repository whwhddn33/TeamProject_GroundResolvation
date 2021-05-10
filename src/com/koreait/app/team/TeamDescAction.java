package com.koreait.app.team;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.teamDAO.TeamBean;
import com.koreait.app.teamDAO.TeamDAO;

public class TeamDescAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward= new ActionForward();
		TeamDAO tdao=new TeamDAO();
		
		String teamNo=request.getParameter("teamNo");
		String teamName=request.getParameter("teamName");
		String teamLocal=request.getParameter("teamLocal");
		String teamLevel=request.getParameter("teamLevel");
		
		if(tdao.showTeamDesc(teamNo) != null) {
			System.out.println("팀번호 있음");
			request.setAttribute("teamName", teamName);
			request.setAttribute("teamLocal", teamLocal);
			request.setAttribute("teamLevel", teamLevel);
		}
		forward.setRedirect(false);
		forward.setPath(request.getContextPath()+"/app/team/TeamDesc.te");
		return forward;
	}
	
}
