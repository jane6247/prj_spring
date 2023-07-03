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
	

	@RequestMapping("/codeGroupTable")
	public String codeGroupTable(CodeGroupVo vo, Model model) {
		
		
		//vo.setShKeyword("회원");//검색창에 회원값 디폴트로 들어가 있기/
		
		vo.setShKeyword(vo.getShKeyword()==null ? "회원" : vo.getShKeyword());//검색한 값에 따라 검색창 내용 바뀌기.
		
		
		// 목록을 가져온다.
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		model.addAttribute("vo",vo);
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
		return "redirect:/codeGroupTable";
	}
	
	@RequestMapping("/codeGroupInst")
	public String codeGroupInst(CodeGroup dto) {
		service.insert(dto);
		return "redirect:/codeGroupTable";
	}


	


}
//보여질 화면이 없으면 바로  redirect





// views/ usr/infra/index/indexUserView.jsp
