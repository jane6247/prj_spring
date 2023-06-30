package com.mycompany.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/biographyUsrView")
	public String biographyUsrView() {
		return "usr/infra/biography/biographyUserView";
	}
	
	
	@RequestMapping("/indexUsrLoginView")
	public String indexUsrLoginView() {
		return "usr/infra/biography/login";
	}
	
	@RequestMapping("/indexJdmView")
	public String codeGroupIndex() {
		return "jdmin/infra/index/indexJdmView";
	}
//	@RequestMapping("/codeGroupTable")
//	public String codeGroupTable() {
//		return "jdmin/infra/codegroup/codeGroupTable";
//	}
//	@RequestMapping("/codeGroupTableSearch")
//	public String codeGroupTableSearch() {
//		return "jdmin/infra/codegroup/codeGroupTableSearch";
//	}
	
	
}
