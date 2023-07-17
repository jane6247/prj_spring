package com.mycompany.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/biographyUsrView")
	public String biographyUsrView() {
		return "usr/infra/biography/biographyUserView";
	}
	
	   @RequestMapping("/index01")
	   public String index_01(){
	   return "usr/infra/wanderMate/index_01";  
	  
	  }
	   
	   @RequestMapping("/index02")
	   public String index_02(){
	   return "usr/infra/wanderMate/index_02";  
	  
	  }
	   @RequestMapping("/index03")
	   public String index_03(){
	   return "usr/infra/wanderMate/index_03";  
	  
	  }
	   @RequestMapping("/index04")
	   public String index_04(){
	   return "usr/infra/wanderMate/index_04";  
	  
	  }
	   @RequestMapping("/index05")
	   public String index_05(){
	   return "usr/infra/wanderMate/index_05";  
	  
	  }
	   @RequestMapping("/index06")
	   public String index_06(){
	   return "usr/infra/wanderMate/index_06";  
	  
	  }
	   @RequestMapping("/index07")
	   public String index_07(){
	   return "usr/infra/wanderMate/index_07";  
	  
	  }

	
}
