package com.mycompany.app.infra.comment;

import java.util.List;

public interface CommentService {

	public int selectOneCount(CommentVo vo);	
	public Comment selectOne(CommentVo vo);
	public int update(Comment dto);
	public int delete(Comment dto);
	public int uelete(Comment dto);
	public int insert(Comment dto);
	List<Comment> selectList(CommentVo vo);
}
