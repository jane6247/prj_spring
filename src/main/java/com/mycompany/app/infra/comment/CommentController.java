package com.mycompany.app.infra.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class CommentController {

	@Autowired
	CommentServiceImpl service;
	
	
	
	@RequestMapping("/commentList")
	public String commentList(@ModelAttribute("vo") CommentVo vo, Model model) {
		
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
	
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Comment> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {

		}
		return "jdmin/infra/comment/commentList";	
	}
	
	@RequestMapping("/commentForm")
	public String commentForm(CommentVo vo, Model model) {

//		객체 한개를 가져와야 된다.
		Comment item = service.selectOne(vo);
		
		model.addAttribute("item", item);
		
		return "jdmin/infra/comment/commentForm";
	}
		
	
	@RequestMapping("/commentUpdt")
	public String commentUpdt(Comment dto) {
		service.update(dto);
		return "redirect:/commentList";
	}
	
	@RequestMapping("/commentDele")
	public String commentDele(Comment dto) {
		service.delete(dto);
		return "redirect:/commentList";
	}
	
	@RequestMapping("/commentUele")
	public String commentUele(Comment dto) {
		service.uelete(dto);
		return "redirect:/commentList";
	}
	
	@RequestMapping("/commentInst")
	public String commentInst(Comment dto) {
		service.insert(dto);
		return "redirect:/commentList";
	}

	
}
