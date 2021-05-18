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
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String category = request.getParameter("num");
		String tmp = request.getParameter("page");
		BoardDAO bdao = new BoardDAO();
		
		int page = (tmp == null) ? 1 : Integer.parseInt(tmp);  
		int pagesize = 10;
		int totalCnt = bdao.getBoardCnt();
		int endRow = page * 10;
		int startRow = endRow - 9;
		int startPage = ((page-1) / pagesize ) * 9 + 1;
		int endPage = startPage + (pagesize-1);
		int totalPage = (totalCnt - 1) / pagesize + 1;
		endPage = endPage > totalPage ? totalPage : endPage;
		request.setAttribute("category", category);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("totalCnt", totalCnt);
		request.setAttribute("page", page);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("BoardList", bdao.getBoardList(startRow,endRow,category));
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		if(category.equals("1")) {
			forward.setPath(request.getContextPath()+"/app/board/review.jsp");
		}else if(category.equals("2")) {
			forward.setPath(request.getContextPath()+"/app/board/qna.jsp");
		}else if(category.equals("3")){
			forward.setPath(request.getContextPath()+"/app/board/faq.jsp");
		}
		return forward;
	}
}
