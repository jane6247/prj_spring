package com.mycompany.app.infra.code;

import java.util.ArrayList;
import java.util.List;

public class Code {
	//디비칼럼명 첫글자는 소문자
	//seq는 편의상 디비에는 int지만 자바에서는 string으로 사용한다.
	
	private String seq;
	private String name;
	private String codeGroup_seq;
	//private String delNy;
//	----- 우클릭 source / generate getter, setter
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	
	public String getCodeGroup_seq() {
		return codeGroup_seq;
	}
	public void setCodeGroup_seq(String codeGroup_seq) {
		this.codeGroup_seq = codeGroup_seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}


//	public String getDelNy() {
//		return delNy;
//	}
//	public void setDelNy(String delNy) {
//		this.delNy = delNy;
//	}

	
}