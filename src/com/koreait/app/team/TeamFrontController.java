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
//		System.out.println(command); //   /team/TeamCreateOk.te
		ActionForward forward = null;

		//팀 생성하기
		if(command.equals("/team/TeamCreateOk.te")) {
			try {
				forward=new TeamCreateOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/team/TeamCreateOk.te 오류");
				System.out.println(e);
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('회원가입 실패!')");
				out.println("</script>");
				out.close();
			}
		//팀명 체크	
		}else if (command.equals("/team/TeamNameCheck.te")) {
			try {
				forward=new TeamNameCheckOkAction().execute(request,response);
			} catch (Exception e) {
				System.out.println("/team/TeamNameCheck.te 오류 / 팀명 체크");
				System.out.println(e);
			}
		//form 입력 체크	
		}else if(command.equals("/team/TeamInputCheck.te")) {
			try {
				forward=new TeamInputOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/team/TeamNameCheck.te 오류 / 입력 체크");
				e.printStackTrace();
			}
		}else if (command.equals("/team/TeamList.te")) {
			try {
				forward=new TeamListAction().execute(request,response);
			} catch (Exception e) {
				System.out.println("/team/TeamList.te 오류");
				System.out.println(e);
			}
		}else if(command.equals("/team/TeamDesc.te")) {
			try {
				forward=new TeamDescAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/team/TeamDesc.te 오류");
				e.printStackTrace();
			}
		}else if (command.equals("/team/TeamModify.te")) {
			try {
				forward=new TeamModifyOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/team/TeamModify.te 오류");
				e.printStackTrace();
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
