package com.mycompany.app.infra.beinghosted;

import java.util.List;

public interface BeingHostedService {
	
	public int selectOneCount(BeingHostedVo vo);
	public List<BeingHosted> selectList1(BeingHostedVo vo);
	public BeingHosted selectOne(BeingHostedVo vo);
	public int update(BeingHosted dto);
	public int delete(BeingHosted dto);
	public int uelete(BeingHosted dto);
	public int insert(BeingHosted dto);
	List<BeingHosted> selectList(BeingHostedVo vo);

	
}
