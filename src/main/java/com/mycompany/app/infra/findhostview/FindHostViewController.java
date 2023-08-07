package com.mycompany.app.infra.findhostview;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.app.infra.codegroup.CodeGroup;
import com.mycompany.app.infra.member.Member;
import com.mycompany.app.infra.member.MemberVo;

@Controller
public class FindHostViewController {

	@Autowired
	FindHostViewServiceImpl service;

	@RequestMapping("/findhostview")
	public String index_02(@ModelAttribute("vo") FindHostViewVo vo, Model model) {

		List<FindHostView> card = service.selectCard(vo);
		model.addAttribute("card", card);

		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<FindHostView> list = service.selectList(vo);
			model.addAttribute("card", list);
//				model.addAttribute("vo", vo);
		} else {
//				by pass
		}

		return "usr/infra/wanderMate/index_02";

	}

	@RequestMapping("/hostpost")
	public String index_05(@ModelAttribute("vo") FindHostViewVo vo, Model model) {

		FindHostView item = service.selectPost(vo);
		model.addAttribute("item", item);

		return "usr/infra/wanderMate/index_05";

	}

	
	  // ajax
	  
	  @ResponseBody
	  
	  @RequestMapping("/getDataByFilters") public Map<String, Object>
	  FindHostView(FindHostViewVo vo) { Map<String, Object> returnMap = new
	  HashMap<String, Object>(); com.mycompany.app.infra.findhostview.FindHostView
	  rtFindHostView = service.selectOneAjax(vo); if (rtFindHostView!= null) {
	  returnMap.put("rtFindHostView", rtFindHostView); returnMap.put("rt",
	  "success"); } else { returnMap.put("rt", "fail"); } return returnMap;
	  
	  }
	 

}
