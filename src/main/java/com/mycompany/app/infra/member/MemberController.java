package com.mycompany.app.infra.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;

	@RequestMapping("/memberList")
	public String codeGroupList(@ModelAttribute("vo") MemberVo vo, Model model) {

		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());

		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);

		} else {
			
		}

		return "jdmin/infra/member/memberList";
	}

	@RequestMapping("/memberForm")
	public String memberForm(MemberVo vo, Model model) {


		Member item = service.selectOne(vo);

		model.addAttribute("item", item);

		return "jdmin/infra/member/memberForm";
	}

	

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

	
	  // ajax
//	  
//	  @ResponseBody
//	  
//	  @RequestMapping("/indexUsrLoginViewAjax") 
//	  public Map<String, Object> indexUsrLoginView(MemberVo vo) { 
//		  Map<String, Object> returnMap = new HashMap<String, Object>(); 
//		  Member rtMember = service.selectOneAjax(vo);
//		  if (rtMember != null) { 
//			  returnMap.put("rtMember", rtMember); 
//			  returnMap.put("rt", "success"); 
//		  } else { 
//			  returnMap.put("rt", "fail"); 
//		  } 
//	  return returnMap;
//	  
//	  }
	 
	  @ResponseBody
		@RequestMapping("/selectOneAjax")
		public Map<String, Object> selectOneAjax(MemberVo vo, HttpSession httpSession) {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			Member rtMember = service.selectOneAjax(vo);
			
			if(rtMember != null) {
		        // 로그인 성공 시 세션에 사용자 정보 저장
				httpSession.setMaxInactiveInterval(60*60); //60min
				httpSession.setAttribute("id", vo.getId());
		        
				returnMap.put("rtMember", rtMember);
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
			return returnMap;
		}
	

	

}
