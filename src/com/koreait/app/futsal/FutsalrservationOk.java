package com.koreait.app.futsal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.futsalDAO.FutsalDAO;
import com.koreait.app.futsalDAO.ReservationBean;

public class FutsalrservationOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			FutsalDAO fdao = new FutsalDAO();
			ActionForward forward = new ActionForward();
			ReservationBean reservation = new ReservationBean();
			
			
		return forward;
	}
	
}
