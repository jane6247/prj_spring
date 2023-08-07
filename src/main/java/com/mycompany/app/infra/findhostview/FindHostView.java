package com.mycompany.app.infra.findhostview;

import java.util.ArrayList;
import java.util.List;

import com.mycompany.app.infra.findhostview.FindHostView;

public class FindHostView {

	
	private String seq;
	private String aboutMe;
	private String aboutPlan;
	private String note;
	private String language;
	private String address;
	private Integer member_seq;
	private Integer budget;
	private Integer days;
	private Integer date;
	private Integer maxPeople;
	private Integer type_seq;
	private Integer region_seq;
	
	
	
	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getAboutMe() {
		return aboutMe;
	}
	public void setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
	}
	public String getAboutPlan() {
		return aboutPlan;
	}
	public void setAboutPlan(String aboutPlan) {
		this.aboutPlan = aboutPlan;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public Integer getBudget() {
		return budget;
	}
	public void setBudget(Integer budget) {
		this.budget = budget;
	}
	public Integer getDays() {
		return days;
	}
	public void setDays(Integer days) {
		this.days = days;
	}
	public Integer getDate() {
		return date;
	}
	public void setDate(Integer date) {
		this.date = date;
	}
	public Integer getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(Integer member_seq) {
		this.member_seq = member_seq;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getMaxPeople() {
		return maxPeople;
	}
	public void setMaxPeople(Integer maxPeople) {
		this.maxPeople = maxPeople;
	}
	public Integer getType_seq() {
		return type_seq;
	}
	public void setType_seq(Integer type_seq) {
		this.type_seq = type_seq;
	}
	public Integer getRegion_seq() {
		return region_seq;
	}
	public void setRegion_seq(Integer region_seq) {
		this.region_seq = region_seq;
	}
	
	
//	for cache
	public static List<FindHostView> cachedFindHostViewArrayList = new ArrayList<FindHostView>();
	
	
	
	
}
