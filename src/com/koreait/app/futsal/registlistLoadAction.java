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

public class registlistLoadAction implements Action{

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		FutsalDAO fdao = new FutsalDAO();
		System.out.println("로드액션실행");
//		String epuserid = request.getParameter("epuserid");
		String epuserid = "whwhddn";
		
		List<GroundInfoBean> loadlist = fdao.getregistlist(epuserid);
		System.out.println(loadlist);
		for (GroundInfoBean i : loadlist) {
			System.out.print(i.getGroundnum()+" , ");
			System.out.print(i.getEpuserid()+" , ");
			System.out.print(i.getGroundarea()+" , ");
			System.out.print(i.getGroundname()+" , ");
			System.out.print(i.getHashTag()+" , ");
			System.out.print(i.getUseraddr()+" , ");
			System.out.print(i.getWeekDayBasicFee()+" , ");
			System.out.println(i.getWeekEndBasicFee());
			
		}
		Gson g = new Gson();
		String json = g.toJson(loadlist);
		System.out.println("json : " +json);
		PrintWriter out = response.getWriter();
		
		out.println("{\"json\" : "+json+"}");
		return null;
	}

}
