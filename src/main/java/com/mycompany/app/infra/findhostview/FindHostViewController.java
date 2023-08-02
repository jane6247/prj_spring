package com.mycompany.app.infra.findhostview;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FindHostViewController {

	
	@Autowired
	FindHostViewServiceImpl service;
	

	   @RequestMapping("/findhostview")
	   public String index_02(@ModelAttribute("vo")FindHostViewVo vo, Model model){
		   
		   
		   List<FindHostView> card = service.selectCard(vo);
		   System.out.println("card.size(): " + card.size());
		   model.addAttribute("card",card);
		  
	   return "usr/infra/wanderMate/index_02";  
	  
	  }
	
	   
	   
		
}
