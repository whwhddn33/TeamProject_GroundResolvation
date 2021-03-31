package com.koreait.app.teamDAO;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mybatis.config.SqlMapConfig;

public class TeamDAO {
	SqlSessionFactory sqlfactory= SqlMapConfig.getInstance();
	SqlSession sqlsession = null;
	
	public TeamDAO() {
		sqlsession=sqlfactory.openSession(true);
	}
	//회원가입
	public boolean join(TeamBean tbean) {
		return 1==sqlsession.insert("Team.join", tbean);
	}
	//팀명 중복체크
	public boolean checkName(String teamname) {
		return 0==(Integer)sqlsession.selectOne("Team.checkname", teamname);
	}

}
