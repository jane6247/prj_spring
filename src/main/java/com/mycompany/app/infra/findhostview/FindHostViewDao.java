package com.mycompany.app.infra.findhostview;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mycompany.app.infra.beinghosted.BeingHosted;
import com.mycompany.app.infra.beinghosted.BeingHostedVo;

@Repository
public class FindHostViewDao {

	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.findhostview.FindHostViewMapper";

	public int selectOneCount(FindHostViewVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<FindHostView> selectList(FindHostViewVo vo) {return sqlSession.selectList(namespace + ".selectList", vo); }	
	public List<FindHostView> selectCard(FindHostViewVo vo) {return sqlSession.selectList(namespace + ".selectCard", vo); }	
	public FindHostView selectPost(FindHostViewVo vo) {return sqlSession.selectOne(namespace + ".selectPost", vo); }	
	public FindHostView selectOne(FindHostViewVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(FindHostView dto){ return sqlSession.update(namespace + ".update", dto); }
	public int delete(FindHostView dto){ return sqlSession.delete(namespace + ".delete", dto); }
	public int uelete(FindHostView dto){ return sqlSession.update(namespace + ".uelete", dto); }
	public int insert(FindHostView dto){ return sqlSession.insert(namespace + ".insert", dto); }
	}
	
	
	
	
