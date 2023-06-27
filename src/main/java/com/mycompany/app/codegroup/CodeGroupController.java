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
		
//		왼쪽의 list는 jsp에서 사용할 변수명
		model.addAttribute("list",list);
		
		
		return "codeGroupList";
	}
	
	@RequestMapping("/codeGroupForm")
	public String codeGroupForm(CodeGroupVo vo, Model model) {
		
		CodeGroup item = service.selectOne(vo);
		

		model.addAttribute("item",item);
		
		
		return "codeGroupForm";
	
	}
	
	@RequestMapping("/codeGroupUpdt")
	public String codeGroupUpdt(CodeGroup dto) {
		
		
		service.update(dto);
		
		
		return "redirect:/codeGroupList";
	
	}
	@RequestMapping("/codeGroupDelt")
	
	public String codeGroupDelt(CodeGroup vo) {
		

		service.delete(vo);
		
		
		return "redirect:/codeGroupList";
	
	}
	
	@RequestMapping("/codeGroupInsert")
		
		public String codeGroupInsert(CodeGroup vo) {
			
	
			service.insert(vo);
			
			
			return "redirect:/codeGroupList";
		
		}
	
}







