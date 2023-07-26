
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
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public List<BeingHosted> selectList1(BeingHostedVo vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
//	for cache
//	@PostConstruct
//	public void selectListCachedCodeArrayList() throws Exception {
//		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
//		Code.cachedCodeArrayList.clear();
//		Code.cachedCodeArrayList.addAll(codeListFromDb);
//		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
//	}
//	
//	public static void clear() throws Exception {
//		Code.cachedCodeArrayList.clear();
//	}
//	public static List<Code> selectListCachedCode(String codeGroup_seq) throws Exception {
//		List<Code> rt = new ArrayList<Code>();
//		for(Code codeRow : Code.cachedCodeArrayList) {
//			if (codeRow.getCodeGroup_seq().equals(codeGroup_seq)) {
//				rt.add(codeRow);
//			} else {
//				// by pass
//			}
//		}
//		return rt;
//	}
//
//	
//	public static String selectOneCachedCode(int code) throws Exception {
//		String rt = "";
//		for(Code codeRow : Code.cachedCodeArrayList) {
//			if (codeRow.getSeq().equals(Integer.toString(code))) {
//				rt = codeRow.getName();
//			} else {
//				// by pass
//			}
//		}
//		return rt;
//	}
}