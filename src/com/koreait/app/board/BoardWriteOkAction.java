package com.koreait.app.board;

import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boardDAO.BoardBean;
import com.koreait.app.boardDAO.BoardDAO;
import com.koreait.app.boardDAO.FileBean;
import com.koreait.app.boardDAO.FileDAO;
import com.koreait.app.boardDAO.ListBean;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardWriteOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("");
		System.out.println("===============BoardWriteOkAction==============");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		String folder = request.getServletContext().getRealPath("app/files");
		int size = 1024 * 1024 * 5;
		BoardDAO bdao = new BoardDAO();
		FileDAO fdao = new FileDAO();
		ListBean board = new ListBean();
		ActionForward forward = new ActionForward();
		MultipartRequest multi = new MultipartRequest(request, folder,size,"UTF-8",new DefaultFileRenamePolicy());
		
		System.out.println("multi객체 :"+multi);
		
		board.setListtitle(multi.getParameter("title"));
		board.setListcontents(multi.getParameter("content"));
		board.setUsernum(Integer.parseInt(multi.getParameter("usernum")));
		
		System.out.println(board.getListtitle());
		System.out.println(board.getListcontents());
		System.out.println(board.getUsernum());
		
		boolean bchk = false;
		bchk = bdao.ListInsert(board);
		
		String filename = multi.getFilesystemName("file");
		String orgname = multi.getOriginalFileName("file1");
		boolean fchk = false;
		if(filename != null && filename != "") {
			int boardnum = bdao.getBoardSeq();
			FileBean file = new FileBean();
			file.setBoardnum(boardnum);
			file.setFilename(filename);
			file.setRealname(orgname);
			fchk = fdao.insertFile(file);
		}
		if(! bchk || ! fchk){
			forward.setRedirect(true);
			forward.setPath(request.getContextPath()+"/board/boardList.bo?num="+num+"&res=false");
			return forward;
		}
		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"/board/boardList.bo?num="+num);
		return forward;
	}
}
