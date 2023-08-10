
package com.mycompany.app.infra.beinghosted;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class BeingHostedServiceImpl implements BeingHostedService{

	@Autowired
	BeingHostedDao dao;
	
	@Override
	public List<BeingHosted> selectList(BeingHostedVo vo) { 
		return dao.selectList(vo); 
	}

	@Override
	public BeingHosted selectOne(BeingHostedVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(BeingHosted dto) {
		return dao.update(dto); 
	}

	@Override
	public int delete(BeingHosted dto) {
		return dao.delete(dto);
	}

	@Override
	public int uelete(BeingHosted dto) {
		return dao.uelete(dto);
	}

	@Override
	public int insert(BeingHosted dto) {
		return dao.insert(dto);
	}

	@Override
	public int selectOneCount(BeingHostedVo vo) {
		
		return dao.selectOneCount(vo);
	}

	@Override
	public List<BeingHosted> selectList1(BeingHostedVo vo) {
		
		return null;
	}
	

}