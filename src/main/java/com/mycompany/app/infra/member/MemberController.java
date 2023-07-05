package com.mycompany.app.infra.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	
	
	@RequestMapping("/memberList")
	public String codeGroupList(@ModelAttribute("vo") MemberVo vo, Model model) {
		
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
	
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		
		return "jdmin/infra/member/memberList";
		}
	
	@RequestMapping("/memberForm")
	public String memberForm(MemberVo vo, Model model) {

//		객체 한개를 가져와야 된다.
		Member item = service.selectOne(vo);
		
		model.addAttribute("item", item);
		
		return "jdmin/infra/member/memberForm";
	}
	
	/*
	 * @RequestMapping("/indexUsrLoginView") public String indexUsrLoginView() {
	 * return "usr/infra/biography/login"; }
	 */
	
	@RequestMapping("/memberUpdt")
	public String memberUpdt(Member dto) {
		service.update(dto);
		return "redirect:/memberList";
	}
	
	@RequestMapping("/memberDele")
	public String memberDele(Member dto) {
		service.delete(dto);
		return "redirect:/memberList";
	}
	
	@RequestMapping("/memberUele")
	public String memberUele(Member dto) {
		service.uelete(dto);
		return "redirect:/memberList";
	}
	
	@RequestMapping("/memberInst")
	public String memberInst(Member dto) {
		service.insert(dto);
		return "redirect:/memberList";
	}


	


}