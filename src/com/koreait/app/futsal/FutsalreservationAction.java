package com.koreait.app.futsal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.futsalDAO.FutsalDAO;
import com.koreait.app.futsalDAO.GroundInfoBean;

public class FutsalreservationAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		FutsalDAO fdao = new FutsalDAO();
		ActionForward forward = new ActionForward();
		
		int groundnum =Integer.parseInt(request.getParameter("groundnum"));
		GroundInfoBean info = fdao.getinfo(groundnum);
		request.setAttribute("groundinfo", info);
		forward.setRedirect(false);
		forward.setPath("/app/futsal/reservation.jsp");
		return forward;
	}

}
