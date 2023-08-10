package com.mycompany.app.infra.beinghosted;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class BeingHostedDao {

	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.beinghosted.BeingHostedMapper";

	public int selectOneCount(BeingHostedVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<BeingHosted> selectList(BeingHostedVo vo) {return sqlSession.selectList(namespace + ".selectList", vo); }	
	public BeingHosted selectOne(BeingHostedVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(BeingHosted dto){ return sqlSession.update(namespace + ".update", dto); }
	public int delete(BeingHosted dto){ return sqlSession.delete(namespace + ".delete", dto); }
	public int uelete(BeingHosted dto){ return sqlSession.update(namespace + ".uelete", dto); }
	public int insert(BeingHosted dto){ return sqlSession.insert(namespace + ".insert", dto); }
	
}
