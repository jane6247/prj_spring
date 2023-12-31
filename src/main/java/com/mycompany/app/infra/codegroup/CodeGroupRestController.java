package com.mycompany.app.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mycompany.app.infra.member.MemberServiceImpl;
import com.mycompany.app.infra.member.MemberVo;




//API 연동해서 CodeGroup에있는 데이터 불러오기 (내가 직접 api보내는 방법임)
//API제공할 때 1. annotation신경쓰기, 2.
//주소에 rest를 쓴 이유는 인터셉트에 안 걸리게 하기 위해서 
@RestController
@RequestMapping("/rest/member")
public class CodeGroupRestController {

	
		@Autowired
		CodeGroupServiceImpl service;
		
		@RequestMapping(value = "", method = RequestMethod.GET)
//		@GetMapping("")
		public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
			List<CodeGroup> list = service.selectList(vo);
			return list;
		}
		

		@RequestMapping(value = "/{seq}", method = RequestMethod.GET)
//		@GetMapping("/{seq}")
		public CodeGroup selectOne(@PathVariable String seq, CodeGroupVo vo) throws Exception {
			vo.setSeq(seq);
			CodeGroup item = service.selectOne(vo);
			return item;
		}
		

		@RequestMapping(value = "", method = RequestMethod.POST)
//		@PostMapping("")
		public String insert(@RequestBody CodeGroup dto) throws Exception {
			service.insert(dto);
			return dto.getSeq();
		}
		
		
		@RequestMapping(value = "/{seq}", method = RequestMethod.PUT)
//		@PatchMapping("/{seq}")
//		@PutMapping("/{seq}")
		public void update(@PathVariable String seq, @RequestBody CodeGroup dto) throws Exception {
			dto.setSeq(seq);
			service.update(dto);
		}
	
	
}
