package com.mycompany.app.infra.beinghosted;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.infra.code.Code;
import com.mycompany.app.infra.member.Member;


@Controller
public class BeingHostedController {
	
	
	@Autowired
	BeingHostedServiceImpl service;
	
	@RequestMapping("/biographyUsrView")
	public String biographyUsrView() {
		return "usr/infra/biography/biographyUserView";
	}
	
	@RequestMapping("/indexUsrLoginView") public String indexUsrLoginView(){
		
		return "usr/infra/biography/login";
	 
	 }
	
	
	   @RequestMapping("/mainview")
	   public String index_01(){
	   return "usr/infra/wanderMate/index_01";  
	  
	  }
	   
	   @RequestMapping("/findhostview")
	   public String index_02(){
	   return "usr/infra/wanderMate/index_02";  
	  
	  }
	   @RequestMapping("/findepostview")
	   public String index_03(){
	   return "usr/infra/wanderMate/index_03";  
	  
	  }
	   @RequestMapping("/Publication")
	   public String index_04(){
	   return "usr/infra/wanderMate/index_04";  
	  
	  }
	   @RequestMapping("/hostpost")
	   public String index_05(){
	   return "usr/infra/wanderMate/index_05";  
	  
	  }
	   @RequestMapping("/account")
	   public String index_06(){
	   return "usr/infra/wanderMate/index_06";  
	  
	  }
	   @RequestMapping("/contact")
	   public String index_07(){
	   return "usr/infra/wanderMate/index_07";  
	  
	  }
	   
	   
	   
	   @RequestMapping("/beingHostedList")
	   public String beingHostedList(@ModelAttribute("vo") BeingHostedVo vo, Model model) {
			
			vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		
			vo.setParamsPaging(service.selectOneCount(vo));
			
			if(vo.getTotalRows() > 0) {
				List<BeingHosted> list = service.selectList(vo);
				model.addAttribute("list", list);

			} else {

			}
			
			return "jdmin/infra/beinghosted/beingHostedList";
			
		}
	   
		@RequestMapping("/beingHostedForm")
		public String beingHostedForm(BeingHostedVo vo, Model model) {

//			객체 한개를 가져와야 된다.
			BeingHosted item = service.selectOne(vo);
			
			model.addAttribute("item", item);
			
			return "jdmin/infra/beinghosted/beingHostedList";
		}
			
		@RequestMapping("/beingHostedListInst")
		public String beingHostedListInst(BeingHosted dto) {
			service.insert(dto);
			return "redirect:/beingHostedList";
		}
	   

}
