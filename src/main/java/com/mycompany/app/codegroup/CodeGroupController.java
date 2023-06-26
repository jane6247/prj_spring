package com.mycompany.app.codegroup;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping("/codeGroupList")
	public String codeGroupList(CodeGroupVo vo, Model model) {
		System.out.println("controller: vo.getShOption(): " + vo.getShOption());
		System.out.println("controller: vo.getShKeyword(): " + vo.getShKeyword());
		
		
		List<CodeGroup> list = service.selectList(vo);
		
		System.out.println("list.size(): " + list.size());
		
//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("list",list);
		
		
		return "codeGroupList";
	}
	
	@RequestMapping("/codeGroupForm")
	public String codeGroupForm(CodeGroupVo vo, Model model) {
		
		CodeGroup codeGroup = service.selectOne(vo);
		
//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("list",codeGroup);
		
		
		return "codeGroupListForm";
	
	}
}







