package com.koreait.app.team;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;

@WebServlet("*.te")
public class TeamFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
//		System.out.println(command); //   /team/TeamJoinOk.te
		ActionForward forward = null;
		
		if(command.equals("/team/TeamJoinOk.te")) {
			try {
				forward=new TeamJoinOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/team/TeamJoinOk.te 오류");
				System.out.println(e);
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('회원가입 실패!')");
				out.println("</script>");
				out.close();
			}
		}else if (command.equals("/team/TeamNameCheck.te")) {
			try {
				forward=new TeamNameCheckOkAction().execute(request,response);
			} catch (Exception e) {
				System.out.println("/team/TeamNameCheck.te 오류");
				System.out.println(e);
			}
		}
		if(forward!=null) {
			if(forward.isRedirect()) {
				//redirect 방식
				response.sendRedirect(forward.getPath());
			}else {
				//forward 방식
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}
}
