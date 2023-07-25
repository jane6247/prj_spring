package com.mycompany.app.infra.beinghosted;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BeingHostedController {
	
	@RequestMapping("/biographyUsrView")
	public String biographyUsrView() {
		return "usr/infra/biography/biographyUserView";
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

}
