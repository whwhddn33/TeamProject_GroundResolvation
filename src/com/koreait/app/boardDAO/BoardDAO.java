package com.koreait.app.boardDAO;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mybatis.config.SqlMapConfig;

public class BoardDAO {
	SqlSessionFactory sqlfactory = SqlMapConfig.getInstance();
	SqlSession sqlsession = null; 
	public BoardDAO() {
		if(sqlsession != null) {
			sqlsession = sqlfactory.openSession(true);
		}
	}
}
