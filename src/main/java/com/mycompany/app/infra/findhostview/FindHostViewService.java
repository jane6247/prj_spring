package com.mycompany.app.infra.findhostview;

import java.util.List;

import com.mycompany.app.infra.beinghosted.BeingHosted;
import com.mycompany.app.infra.beinghosted.BeingHostedVo;
import com.mycompany.app.infra.member.Member;
import com.mycompany.app.infra.member.MemberVo;

public interface FindHostViewService {

	
	public int selectOneCount(FindHostViewVo vo);
	
	public List<FindHostView> selectCard(FindHostViewVo vo); //데이터 뽑고싶어서 추가
	public FindHostView selectPost(FindHostViewVo vo);
	public FindHostView selectOne(FindHostViewVo vo);
	public int update(FindHostView dto);
	public int delete(FindHostView dto);
	public int uelete(FindHostView dto);
	public int insert(FindHostView dto);
	List<FindHostView> selectList(FindHostViewVo vo);
	/*
	 * public FindHostView selectOneAjax(FindHostViewVo vo);
	 */
}
