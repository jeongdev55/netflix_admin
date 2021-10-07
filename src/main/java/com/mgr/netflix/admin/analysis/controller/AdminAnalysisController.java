package com.mgr.netflix.admin.analysis.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mgr.netflix.admin.content.service.AdminContentService;
import com.mgr.netflix.admin.member.service.AdminMemberService;

import com.mgr.netflix.admin.sales.service.AdminSalesService;

@Controller
public class AdminAnalysisController {
	@Autowired
	private AdminContentService adminContentService;
	
	@Autowired
	private AdminSalesService adminSalesService;	
	
	@Autowired
	private AdminMemberService adminMemberService;
	
	@RequestMapping("/analysis_member.ado")
	public String getAllMember(Model model){
		HashMap<String, Object> map = new HashMap<String, Object>();
		List<Map<String,String>> countMember=adminMemberService.getMonthCount(); //chart를 위한 월별 회원 데이터

		
		// 분석용 데이터 가져오기
		List<Map<String,String>> AnalysisData=adminMemberService.getAnalysisData();
		
		
		//==========월별 데이터 정리====================================================
		HashMap<String, Object> month_map = new HashMap<String, Object>(); 
		int Jan=0,Feb=0,Mar=0,Apr=0,May=0,Jun=0,Jul=0,Aug=0,Sep=0,Oct=0,Nov=0,Dec=0; //1~12월달 카운트 하기위한 변수
		
		    for(int i = 0; AnalysisData.size() > i; i++){
		    	if(AnalysisData.get(i).get("month").toString().equals("01")) {	Jan++;}
		    	if(AnalysisData.get(i).get("month").toString().equals("02")) {	Feb++;}
		    	if(AnalysisData.get(i).get("month").toString().equals("03")) {	Mar++;}
		    	if(AnalysisData.get(i).get("month").toString().equals("04")) {	Apr++;}
		    	if(AnalysisData.get(i).get("month").toString().equals("05")) {	May++;}
		    	if(AnalysisData.get(i).get("month").toString().equals("06")) {	Jun++;}
		    	if(AnalysisData.get(i).get("month").toString().equals("07")) {	Jul++;	}
		    	if(AnalysisData.get(i).get("month").toString().equals("08")) {	Aug++;}
		    	if(AnalysisData.get(i).get("month").toString().equals("09")) {	Sep++;}
		    	if(AnalysisData.get(i).get("month").toString().equals("10")) {	Oct++;}
		    	if(AnalysisData.get(i).get("month").toString().equals("11")) {	Nov++;}
		    	if(AnalysisData.get(i).get("month").toString().equals("12")) {	Dec++;}		    
		    	} 
		    
		    month_map.put("01",Jan);
		    month_map.put("02",Feb);
		    month_map.put("03",Mar);
		    month_map.put("04",Apr);
		    month_map.put("05",May);
		    month_map.put("06",Jan);
		    month_map.put("07",Jul);
		    month_map.put("08",Aug);
		    month_map.put("09",Sep);
		    month_map.put("10",Oct);
		    month_map.put("11",Nov);
		    month_map.put("12",Dec);
		    	
		    
		    
		model.addAttribute("month_map",month_map);

		model.addAttribute("memberList",adminMemberService.getAllMember(map)); //회원 전체 데이터 전송
		return "analysis_member";		
	}
}
