package com.koreait.app.userDAO;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mybatis.config.SqlMapConfig;

public class EnterpriseUserDAO {
	SqlSessionFactory sqlfactory = SqlMapConfig.getInstance();
	SqlSession sqlsession = null;

	public EnterpriseUserDAO() {
		sqlsession = sqlfactory.openSession(true);
	}

	public boolean join(EnterpriseUserBean user) {
		return 1 == sqlsession.insert("EUser.join", user);
	}

	public EnterpriseUserBean login(String userid, String userpw) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("epuserid", userid);
		datas.put("epuserpw", userpw);
		EnterpriseUserBean euser = sqlsession.selectOne("EUser.login", datas);
		return euser;
	}
}
