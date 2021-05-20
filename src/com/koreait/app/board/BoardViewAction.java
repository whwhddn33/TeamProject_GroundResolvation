package com.koreait.app.board;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boardDAO.BoardDAO;
import com.koreait.app.boardDAO.ListBean;

public class BoardViewAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		BoardDAO bdao = new BoardDAO();
		ListBean lists = bdao.getBoardList(num);
		bdao.sumReadCnt(num);
		request.setAttribute("board", lists);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/app/board/view.jsp");
		return forward;
	}
}
