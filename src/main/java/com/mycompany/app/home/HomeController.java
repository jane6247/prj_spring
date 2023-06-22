package com.mycompany.app.home;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	 @RequestMapping(value="/")
	 public String home() {
		 
		 //여기에서 서버단에서 필요한 작업을 수행한다.
		 System.out.println("");
		
		 
		 // 아래의 jsp파일 호출
		 return "home";
	 }
	 
	 @RequestMapping(value="/home4")
	 public String home4() {
	
		
		 return "app/home/home4";
	 }
	 
	 @RequestMapping(value ="/home3")
	 public ModelAndView home3() {
		 
		 ModelAndView mav = new ModelAndView();
		 
		 mav.setViewName("home3");
		 
		 return mav;
	 }
	 
	 @RequestMapping(value="/login")
	 public String login() {
		 
		 
		 // 아래의 jsp파일 호출
		 return "login";
	 }
	 
	 @RequestMapping(value="/new_index")
	 public String new_index() {
		 
		 
		 // 아래의 jsp파일 호출
		 return "admin/new_index";
	 }
	 @RequestMapping(value="/ui_03")
	 public String ui_03() {
		 
		 
		 // 아래의 jsp파일 호출
		 return "ui_03";
	 }
	 @RequestMapping(value="/ui_04")
	 public String ui_04() {
		 
		 
		 // 아래의 jsp파일 호출
		 return "/ui_04";
	 }
	 
}
