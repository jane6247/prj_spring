package com.mycompany.app.infra.findhostview;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.app.infra.member.Member;
import com.mycompany.app.infra.member.MemberVo;


@Service
public class FindHostViewServiceImpl implements FindHostViewService {

	
	@Autowired
	FindHostViewDao dao;
	
	@Override
	public List<FindHostView> selectList(FindHostViewVo vo) { 
	    return dao.selectList(vo); 
	}


	@Override
	public FindHostView selectOne(FindHostViewVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(FindHostView dto) {
		return dao.update(dto); 
	}

	@Override
	public int delete(FindHostView dto) {
		return dao.delete(dto);
	}

	@Override
	public int uelete(FindHostView dto) {
		return dao.uelete(dto);
	}

	@Override
	public int insert(FindHostView dto) {
		return dao.insert(dto);
	}

	@Override
	public int selectOneCount(FindHostViewVo vo) {
		
		return dao.selectOneCount(vo);
	}

	@Override
	public List<FindHostView> selectCard(FindHostViewVo vo) {
		
		return dao.selectCard(vo);
	}	
	
	@Override
	public FindHostView selectPost(FindHostViewVo vo) {
		
		return dao.selectPost(vo);
	}


	
	@Override
	public FindHostView selectOneAjax(FindHostViewVo vo) {
		
		return dao.selectOneAjax(vo);
	}
	 
	
}
