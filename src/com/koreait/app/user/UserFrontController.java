package com.koreait.app.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;

import com.koreait.app.user.CheckId;

@WebServlet("*.me")
public class UserFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserFrontController() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;

		switch (command) {
			case "/app/user/joinView.me": // 회원가입 페이지 이동 
				forward = new ActionForward();
				forward.setPath(request.getContextPath()+"/app/user/joinView.jsp");
				forward.setRedirect(true);
				break;
				
			case "/app/user/CheckId.me": // 회원가입 시, 아이디 중복 체크
				try {
					forward = new CheckId().execute(request, response);
				} catch (Exception e1) {
					System.out.println("/user/CheckId 오류");
				}
				break;

			case "/app/user/UserJoinOk.me": // 회원가입 실행
				try {
					forward = new UserJoinOkAction().execute(request, response);
				} catch (Exception e) {
					System.out.println("/app/user/UserJoinOk 오류");
					System.out.println(e);
				}
				break;
	
			case "/app/user/loginView.me": // 로그인 페이지 이동
					forward = new ActionForward();
					forward.setPath(request.getContextPath()+"/app/user/loginView.jsp");
					forward.setRedirect(true);
				break;
				
			case "/app/user/UserLoginOk.me": // 로그인 실행
				try {
					forward = new UserLoginOkAction().execute(request, response);
				} catch (Exception e) {
					System.out.println("/app/user/UserLoginOk 오류");
					System.out.println(e);
				}
				break;
			
			case "/app/user/logOut.me": // 로그아웃
				request.getSession().invalidate(); 
				forward = new ActionForward();
				forward.setRedirect(true);
				forward.setPath(request.getContextPath()+"/");
				break;
				
			default:
				break;
		}

		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}

}