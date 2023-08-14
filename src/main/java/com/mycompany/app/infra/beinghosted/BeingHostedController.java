package com.mycompany.app.infra.beinghosted;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;


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
	   public String mainview(){
	   return "usr/infra/wanderMate/mainview";  
	  
	  }
	   
	   @RequestMapping("/postingview")
	   public String postingview(){
	   return "usr/infra/wanderMate/postingview";  
	  
	  }
	   @RequestMapping("/Publication")
	   public String Publication(){
	   return "usr/infra/wanderMate/Publication";  
	  
	  }
	  
	   @RequestMapping("/account")
	   public String account(){
	   return "usr/infra/wanderMate/account";  
	  
	  }
	   @RequestMapping("/contact")
	   public String contact(){
	   return "usr/infra/wanderMate/contact";  
	  
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
		
		
		//API 받아서 연동 하는 법
		@RequestMapping(value="publicCorona1List")
		public String publicCorona1List(Model model)throws Exception {
			
			
			String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=MxN8yOtIPgNjMDke%2F6nupSPsU7qYeio7AOuVGq3M0nHavDslRkejvlYWB7UDWNSarBMeQgBccg3IuUezbSliyg%3D%3D&&type=json";
			
			URL url = new URL(apiUrl);
			HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
			httpURLConnection.setRequestMethod("GET");
			
			BufferedReader bufferedReader;
			if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			} else {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
			}
			
			StringBuilder stringBuilder = new StringBuilder();
			String line;
			while ((line = bufferedReader.readLine()) != null) {
				System.out.println("line: " + line);
				stringBuilder.append(line);
			}
			
			bufferedReader.close();
			httpURLConnection.disconnect();
			
			
			ObjectMapper objectMapper = new ObjectMapper();
		      
		      Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
		      
		      System.out.println("######## Map");
				for (String key : map.keySet()) {
					String value = String.valueOf(map.get(key));	// ok
					System.out.println("[key]:" + key + ", [value]:" + value);
				}
				
				
				Map<String, Object> header = new HashMap<String, Object>();
				header = (Map<String, Object>) map.get("header");
				
				System.out.println("######## Header");
				for (String key : header.keySet()) {
					String value = String.valueOf(header.get(key));	// ok
					System.out.println("[key]:" + key + ", [value]:" + value);
				}
			
				String aaa = (String) header.get("resultCode");
				
				System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
				System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
				
				Map<String, Object> body = new HashMap<String, Object>();
				body = (Map<String, Object>) map.get("body");
				
				List<Home> items = new ArrayList<Home>();
				items = (List<Home>) body.get("items");
				
				System.out.println("items.size(): " + items.size());
				

				
				model.addAllAttributes(header);
				model.addAllAttributes(body);
			
			return "test/publicCorona1List";
		}
		
}
