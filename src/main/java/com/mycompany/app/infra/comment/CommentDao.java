package com.mycompany.app.infra.comment;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class CommentDao {

	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.comment.CommentMapper";

	public int selectOneCount(CommentVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Comment> selectList(CommentVo vo) {return sqlSession.selectList(namespace + ".selectList", vo); }	
	public Comment selectOne(CommentVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(Comment dto){ return sqlSession.update(namespace + ".update", dto); }
	public int delete(Comment dto){ return sqlSession.delete(namespace + ".delete", dto); }
//	public int uelete(Comment dto){ return sqlSession.update(namespace + ".uelete", dto); }
	public int insert(Comment dto){ return sqlSession.insert(namespace + ".insert", dto); }
}
