package com.koreait.app.futsal;

import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.futsalDAO.FutsalDAO;
import com.koreait.app.futsalDAO.GroundInfoBean;

public class GroundRegistAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward= new ActionForward();
		String contextPath = request.getContextPath();

		GroundInfoBean ginfobean = new GroundInfoBean();
		FutsalDAO fdao = new FutsalDAO();

		//모든 파라미터 출력
		Enumeration<String> params = request.getParameterNames();
		while(params.hasMoreElements()) {
			String name = (String) params.nextElement();
			System.out.println(name + " : " + request.getParameter(name)); 
		}

		String groundname = request.getParameter("groundname");
		String epuserid = request.getParameter("epuserid");
		String hashTag = request.getParameter("hashTag");
		String useraddr = request.getParameter("useraddr");
		String useraddrdetail = request.getParameter("useraddrdetail");
		String useraddretc = request.getParameter("useraddretc");
		String userpostcode = request.getParameter("userpostcode");
		String weekDayBasicFee = request.getParameter("weekDayBasicFee");
		String weekEndBasicFee = request.getParameter("weekEndBasicFee");
		String groundarea = request.getParameter("groundarea1")+"*"+request.getParameter("groundarea2");

		String weekDaystarttime = request.getParameter("weekDaystarttime");
		String weekDayendtime = request.getParameter("weekDayendtime");
		String weekDayHotTimeFee = request.getParameter("weekDayHotTimeFee");

		String weekEndstarttime = request.getParameter("weekEndstarttime");
		String weekEndEndtime = request.getParameter("weekEndEndtime");
		String weekEndHotTimeFee = request.getParameter("weekEndHotTimeFee");

		ginfobean.setEpuserid(epuserid);
		ginfobean.setGroundname(groundname);
		ginfobean.setGroundarea(groundarea);
		ginfobean.setUserpostcode(userpostcode);
		ginfobean.setUseraddr(useraddr);
		ginfobean.setUseraddrdetail(useraddrdetail);
		ginfobean.setUseraddretc(useraddretc);
		ginfobean.setHashTag(hashTag);
		ginfobean.setWeekDayBasicFee(weekDayBasicFee);
		ginfobean.setWeekEndBasicFee(weekEndBasicFee);

		HashMap<String, String> weekDayHotTimeMap = new HashMap<>();
		weekDayHotTimeMap.put("weekDayHotTimeFee", weekDayHotTimeFee);
		weekDayHotTimeMap.put("weekDaystarttime", weekDaystarttime);
		weekDayHotTimeMap.put("weekDayEndtime", weekDayendtime);

		HashMap<String, String> weekEndHotTimeMap = new HashMap<>();
		weekEndHotTimeMap.put("weekEndHotTimeFee", weekEndHotTimeFee);
		weekEndHotTimeMap.put("weekEndstarttime", weekEndstarttime);
		weekEndHotTimeMap.put("weekEndEndtime", weekEndEndtime);

		System.out.println("-----------------------------------");
		System.out.println("weekdayhottimemap : " + weekDayHotTimeMap.get("weekDaystarttime"));
		System.out.println("평일가격시작시간 : "+weekDayHotTimeMap.get("weekDaystarttime"));
		System.out.println("주말가격시작시간 : "+weekEndHotTimeMap.get("weekEndstarttime"));
		System.out.println("-----------------------------------");

		if(fdao.insertgroundinfo(ginfobean)==1) {
			//평일핫타임입력
			if(!(weekDayHotTimeMap.get("weekDaystarttime").equals("0"))) {
				System.out.println("평일가격시작시간 : "+weekEndHotTimeMap.get("weekEndstarttime"));
				int stnum = Integer.parseInt(weekDaystarttime);
				int endnum = Integer.parseInt(weekDayendtime);
				System.out.println("평일 입력 / if stnum : " + stnum);
				System.out.println("평일 입력 / if endnum : " + endnum);
				for (int i = stnum; i < endnum; i++) {
					weekDayHotTimeMap.put("weekDaytime", Integer.toString(i));
					fdao.insertWeekDayHotTime(weekDayHotTimeMap);
				}
			}
			//주말핫타임입력
			if(!weekEndHotTimeMap.get("weekEndstarttime").equals("0")) {
				System.out.println("주말가격시작시간 : "+weekEndHotTimeMap.get("weekEndstarttime"));
				int stnum = Integer.parseInt(weekEndstarttime);
				int endnum = Integer.parseInt(weekEndEndtime);

				for (int i = stnum; i < endnum; i++) {
					weekEndHotTimeMap.put("weekEndtime", Integer.toString(i));
					fdao.insertWeekEndHotTime(weekEndHotTimeMap);
				}
			}

			forward.setPath(contextPath+"/app/futsal/registlist.jsp");
			forward.setRedirect(true);
			return forward;
		}



		forward.setPath(contextPath+"/app/futsal/groundregist.jsp");
		forward.setRedirect(true);
		return forward;
	}

}
