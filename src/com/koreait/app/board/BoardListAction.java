package com.koreait.app.board;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boardDAO.BoardDAO;

public class BoardListAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String category = request.getParameter("num");
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		BoardDAO bdao = new BoardDAO();
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		if(category.equals("1")) {
			forward.setPath("/app/board/review.jsp");
		}else if(category.equals("2")) {
			forward.setPath("/app/board/qna.jsp");
		}else if(category.equals("3")){
			forward.setPath("/app/board/faq.jsp");
		}
		return forward;
	}
}
