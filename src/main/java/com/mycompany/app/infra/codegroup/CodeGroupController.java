package com.mycompany.app.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	/*
	 * @RequestMapping("/codeGroupList") public String codeGroupList(CodeGroupVo vo,
	 * Model model) { List<CodeGroup> list = service.selectList(vo);
	 * model.addAttribute("list", list); return
	 * "jdmin/infra/codegroup/codeGroupList"; }
	 * 
	 * @RequestMapping("/codeGroupForm") public String codeGroupForm(CodeGroupVo vo,
	 * Model model) { CodeGroup codeGroup = service.selectOne(vo);
	 * model.addAttribute("item", codeGroup); return
	 * "jdmin/infra/codegroup/codeGroupForm"; }
	 */
	
	@RequestMapping("/codeGroupTable")
	public String codeGroupTable(CodeGroupVo vo, Model model) {
		// 목록을 가져온다.
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "jdmin/infra/codegroup/codeGroupTable";
	}
	
	@RequestMapping("/codeGroupForm")
	public String codeGroupForm(CodeGroupVo vo, Model model) {

//		객체 한개를 가져와야 된다.
		CodeGroup item = service.selectOne(vo);
		
		model.addAttribute("item", item);
		
		return "jdmin/infra/codegroup/codeGroupForm";
	}
		
	
	@RequestMapping("/codeGroupUpdt")
	public String codeGroupUpdt(CodeGroup dto) {
		service.update(dto);
		return "redirect:/codeGroupTable";
	}
	
	@RequestMapping("/codeGroupDele")
	public String codeGroupDele(CodeGroup dto) {
		service.delete(dto);
		return "redirect:/codeGroupTable";
	}
	
	@RequestMapping("/codeGroupUele")
	public String codeGroupUele(CodeGroup dto) {
		service.uelete(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupInst")
	public String codeGroupInst(CodeGroup dto) {
		service.insert(dto);
		return "redirect:/codeGroupTable";
	}


	


}
//보여질 화면이 없으면 바로  redirect





// views/ usr/infra/index/indexUserView.jsp
