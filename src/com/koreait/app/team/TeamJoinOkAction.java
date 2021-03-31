package com.koreait.app.team;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.teamDAO.TeamBean;
import com.koreait.app.teamDAO.TeamDAO;

public class TeamJoinOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		ActionForward forward= new ActionForward();
		TeamDAO tdao=new TeamDAO();
		TeamBean tbean=new TeamBean();

		tbean.setTeamName(request.getParameter("teamname"));
		tbean.setCaptainName(request.getParameter("captainname"));
		tbean.setTeamTel(request.getParameter("teamtel"));
		tbean.setTeamLocal(request.getParameter("teamlocal"));
		tbean.setTeamFoundYear(request.getParameter("teamfoundyear"));
		tbean.setTeamLevel(request.getParameter("teamlevel"));
		tbean.setStartAge(request.getParameter("startage"));
		tbean.setStopAge(request.getParameter("stopage"));
		tbean.setUniformColor(request.getParameter("uniformcolor"));
		tbean.setUniformAway(request.getParameter("uniformaway"));
		tbean.setControlLabel(request.getParameter("controllabel"));
		if(tdao.join(tbean)) {
			forward.setRedirect(true);
			forward.setPath(request.getContextPath()+"/app/team/teamview.jsp");
		}
		return forward;
		
	}

}
