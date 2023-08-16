package com.mycompany.app.infra.comment;

import java.util.ArrayList;
import java.util.List;


public class Comment {

	private String seq;
	private String message;
	private Integer member_Seq;
	
	
//	for cache
	public static List<Comment> cachedCommentArrayList = new ArrayList<Comment>();
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Integer getMember_Seq() {
		return member_Seq;
	}
	public void setMember_Seq(Integer member_Seq) {
		this.member_Seq = member_Seq;
	}
	
	
	
}
