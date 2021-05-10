package com.koreait.app.futsal;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.ActionForward;


	@WebServlet("*.fu")
	public class FutsalFrontController extends HttpServlet {
		/**
		 * Servlet implementation class FutsalFrontController
		 */
//		JVM의 메모리에만 머물러 있던 객체를 시스템이 종료되거나 네트워크로 통신을 할 때에도
//		그대로 사용할 수 있도록 영구화 목적으로 직렬화를 사용한다.
//		직렬화된 객체는 byte형태로 변환되어 있으며, 다시 사용하고 싶을 때에는 역직렬화를 통해서
//		객체로 변환한다. 이때 SUID(serialVersionUID)라는 값을 고정시켜 구분점으로 사용해서
//		사용자가 원하는 객체가 맞는지 판단하게 된다.
//		자주 변경되는 클래스 객체에는 사용하지 않는 것이 좋다.
		private static final long serialVersionUID = 1L;

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
			
			System.out.println("풋살컨트롤러 진입");
			if(command.equals("/futsalFrontController/futsallist.fu")) {
				System.out.println("풋살컨트롤러/풋살리스트 진입");
				try {
					forward= new FutsallistAction().execute(request, response);
				} catch (Exception e) {
					System.out.println("/futsal/futsallist.fu 오류");
					System.out.println(e);
				}
			}else if(command.equals("/futsalFrontController/futsallistLoad.fu")) {
				try {
					forward = new FutsallistLoadAction().execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}else if(command.equals("/futsalFrontController/groundregist.fu")) {
				try {
					System.out.println("컨트롤러/구장등록");
					forward = new GroundRegistAction().execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}else if(command.equals("/futsalFrontController/groundregistpage.fu")) {
				try {
					System.out.println("컨트롤러/구장등록페이지이동");
					forward = new ActionForward();
					forward.setPath("/app/futsal/groundregist.jsp");
					forward.setRedirect(false);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}else if(command.equals("/futsalFrontController/registlistLoad.fu")) {
				try {
					System.out.println("loadlist실행");
					forward = new registlistLoadAction().execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}else if(command.equals("/futsalFrontController/registlistpage.fu")) {
				try {
					System.out.println("컨트롤러/구장등록리스트페이지이동");
					forward = new ActionForward();
					forward.setPath("/app/futsal/registlist.jsp");
					forward.setRedirect(false);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
//			/futsalFrontController/registlistLoad.fu
			
			
			
			//풋살장에약페이지로 이동시 구장 정보 보여주는 컨트롤러
			else if(command.equals("futsal/reservation.fu")) {
				try {
					forward= new FutsalreservationAction().execute(request, response);
				} catch (Exception e) {
					System.out.println("풋살예약페이지 구장정보 가져오는 컨트롤러");
					e.printStackTrace();
				}
			}
			else if (command.equals("futsal/reservationOk.fu")) {
				try {
					forward=new FutsalrservationOk().execute(request, response);
				} catch (Exception e) {
					System.out.println("풋살예약 페이지에서 예약하기 눌렀을 시");
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
