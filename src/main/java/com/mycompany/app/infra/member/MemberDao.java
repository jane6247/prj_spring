package com.mycompany.app.infra.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.member.MemberMapper";
	
	public int selectOneCount(MemberVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }                                                                                
	public List<Member> selectList(MemberVo vo) {return sqlSession.selectList(namespace + ".selectList", vo); }	
	public Member selectOne(MemberVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(Member dto){ return sqlSession.update(namespace + ".update", dto); }
	public int delete(Member dto){ return sqlSession.delete(namespace + ".delete", dto); }
	public int uelete(Member dto){ return sqlSession.update(namespace + ".uelete", dto); }
	public int insert(Member dto){ return sqlSession.insert(namespace + ".insert", dto); }
	public Member selectOneAjax(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOneAjax", vo); }
//	for cache
	public List<Member> selectListCachedMemberArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedMemberArrayList", null); }
	
	

	
	
}
