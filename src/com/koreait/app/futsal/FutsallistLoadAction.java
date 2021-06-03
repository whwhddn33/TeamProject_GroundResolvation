package com.koreait.app.futsal;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.futsalDAO.FutsalDAO;
import com.koreait.app.futsalDAO.GroundInfoBean;

public class FutsallistLoadAction implements Action{

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		FutsalDAO fdao = new FutsalDAO();
		
		String String_tryCount = request.getParameter("tryCount");
		int tryCount = Integer.parseInt(String_tryCount);
		System.out.println(tryCount);
		
		List<GroundInfoBean> loadlist = fdao.getgroundlist(tryCount);
		System.out.println(loadlist);
		for (GroundInfoBean i : loadlist) {
			System.out.println(i.getGroundnum());
			System.out.println(i.getGroundname());
		}
		
		
		String selectDate = request.getParameter("selectDate");
		String objectToReturn = "{\"date\": \""+selectDate+"\"}";
		
		Gson g = new Gson();
		String json = g.toJson(loadlist);
		System.out.println(json);
		PrintWriter out = response.getWriter();
		
		out.println("{\"date\":"+objectToReturn+",\"json\" : "+json+"}");
		return null;
	}
}
