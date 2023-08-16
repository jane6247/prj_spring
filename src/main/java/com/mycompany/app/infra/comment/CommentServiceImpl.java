
  package com.mycompany.app.infra.comment;
  
  import java.util.List;

 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
  

  @Service 
  public class CommentServiceImpl implements CommentService{
 
  @Autowired CommentDao dao;
  
  @Override public List<Comment> selectList(CommentVo vo) { return
  dao.selectList(vo); }
  
 @Override public Comment selectOne(CommentVo vo) { return dao.selectOne(vo);
  }
  
  @Override public int update(Comment dto) { return dao.update(dto); }
  
  @Override public int delete(Comment dto) { return dao.delete(dto); }
  
  @Override public int uelete(Comment dto) { return dao.uelete(dto); }
  
  @Override public int insert(Comment dto) { return dao.insert(dto); }
  
  @Override public int selectOneCount(CommentVo vo) {
  
  return dao.selectOneCount(vo); }
  
  }
 