package com.koreait.app.team;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.teamDAO.TeamDAO;

public class TeamListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		TeamDAO tdao = new TeamDAO();
		ActionForward forward= new ActionForward();
//		HttpSession session = request.getSession();
		
		String temp = request.getParameter("page");
		int page = temp==null?1:Integer.parseInt(temp);
		int pagesize = 10;
		int totalCnt = tdao.getTeamCnt();
		
		//10 : 한 페이지에 띄워줄 "팀" 개수
		int endRow = page*10;
		int startRow = endRow-9;
		
		int startPage = ((page-1)/pagesize)*pagesize + 1;
		int endPage = startPage+(pagesize-1);
		int totalPage = (totalCnt-1)/pagesize +1; 
		endPage = endPage>totalPage?totalPage:endPage;
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("totalCnt", totalCnt);
		request.setAttribute("nowPage", page);
		request.setAttribute("startPage",startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("boardList", tdao.getTeamList(startRow,endRow));
		
		forward.setRedirect(false);
		forward.setPath(request.getContextPath()+"/app/team/teamlist.jsp");
		return forward;
	}

}
