package com.mycompany.app.codegroup;
import java.util.List;
public interface CodeGroupService {
	public List<CodeGroup> selectList(CodeGroupVo vo);
	public CodeGroup selectOne(CodeGroupVo vo);
	
	public int update(CodeGroup dto);
	
	public int delete(CodeGroup vo);
	
	
	
}