package com.mycompany.app.infra.findhostview;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


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

	
//	for cache
	@PostConstruct
	public void selectListCachedFindHostViewArrayList() throws Exception {
	    List<FindHostView> findHostViewListFromDb = dao.selectListCachedFindHostViewArrayList(); // Fix variable name
	    FindHostView.cachedFindHostViewArrayList.clear();
	    FindHostView.cachedFindHostViewArrayList.addAll(findHostViewListFromDb); // Fix variable name
	    System.out.println("cachedFindHostViewArrayList: " + FindHostView.cachedFindHostViewArrayList.size() + " cached!"); // Fix spelling
	}

	public static void clear() throws Exception {
	    FindHostView.cachedFindHostViewArrayList.clear();
	}
	
	public static List<FindHostView> selectListCachedFindHostView(String type_seq) throws Exception {
		List<FindHostView> rt = new ArrayList<FindHostView>();
		for(FindHostView findhostviewRow : FindHostView.cachedFindHostViewArrayList) {
			if (findhostviewRow.getType_seq().equals(type_seq)) {
				rt.add(findhostviewRow);
			} else {
				// by pass
			}
		}
		return rt;
	}

	
	public static String selectOneCachedFindHostView(int findhostview) throws Exception {
		String rt = "";
		for(FindHostView findhostviewRow : FindHostView.cachedFindHostViewArrayList) {
			if (findhostviewRow.getSeq().equals(Integer.toString(findhostview))) {
				rt = findhostviewRow.getName();
			} else {
				// by pass
			}
		}
		return rt;
	}

	

	
}
