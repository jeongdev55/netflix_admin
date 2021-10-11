package com.mgr.netflix.admin.analysis.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.mgr.netflix.admin.member.service.AdminMemberService;


@Controller
public class AdminAnalysisController {


	@Autowired
	private AdminMemberService adminMemberService;
	
	@RequestMapping("/analysis_member.ado")
	public String getAllMember(Model model){
		HashMap<String, Object> map = new HashMap<String, Object>();

		
		// 분석용 데이터 가져오기
		List<Map<String,String>> monthAnalysisData=adminMemberService.monthAnalysisData();
		List<Map<String,String>> AnalysisData=adminMemberService.AnalysisData();
		
		
		//==========월별 데이터 정리====================================================
		HashMap<String, Object> month_map = new HashMap<String, Object>(); 
		int Jan=0,Feb=0,Mar=0,Apr=0,May=0,Jun=0,Jul=0,Aug=0,Sep=0,Oct=0,Nov=0,Dec=0; //1~12월달 카운트 하기위한 변수
		
		    for(int i = 0; monthAnalysisData.size() > i; i++){
		    	if(monthAnalysisData.get(i).get("month").toString().equals("01")) {	Jan++;}
		    	if(monthAnalysisData.get(i).get("month").toString().equals("02")) {	Feb++;}
		    	if(monthAnalysisData.get(i).get("month").toString().equals("03")) {	Mar++;}
		    	if(monthAnalysisData.get(i).get("month").toString().equals("04")) {	Apr++;}
		    	if(monthAnalysisData.get(i).get("month").toString().equals("05")) {	May++;}
		    	if(monthAnalysisData.get(i).get("month").toString().equals("06")) {	Jun++;}
		    	if(monthAnalysisData.get(i).get("month").toString().equals("07")) {	Jul++;	}
		    	if(monthAnalysisData.get(i).get("month").toString().equals("08")) {	Aug++;}
		    	if(monthAnalysisData.get(i).get("month").toString().equals("09")) {	Sep++;}
		    	if(monthAnalysisData.get(i).get("month").toString().equals("10")) {	Oct++;}
		    	if(monthAnalysisData.get(i).get("month").toString().equals("11")) {	Nov++;}
		    	if(monthAnalysisData.get(i).get("month").toString().equals("12")) {	Dec++;}		    
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
		//====================================================================
		  
		    
      //==========나이별 데이터 정리====================================================
		    HashMap<String, Object> age_map = new HashMap<String, Object>(); 
		    int a10=0,a20=0,a30=0,a40=0,a50=0,a60=0;
		    int age=0;
		    for(int i = 0; AnalysisData.size() > i; i++){
		    	age=Math.abs((((Integer.parseInt(AnalysisData.get(i).get("birthyear"))+1900)-2021)-1));
		    	if(age>=10 && age<20) {a10++;	}
		    	if(age>=20 && age<30) {a20++;	}
		    	if(age>=30 && age<40) {a30++;	}
		    	if(age>=40 && age<50) {a40++;	}
		    	if(age>=50 && age<60) {a50++;	}
		    	else if(age>=60) {  //60세 이상이면
		    		a60++;
		    	}
		    }
		    age_map.put("10대",a10);
		    age_map.put("20대",a20);
		    age_map.put("30대",a30);
		    age_map.put("40대",a40);
		    age_map.put("50대",a50);
		    age_map.put("60대",a60);
      //====================================================================    
		    

	  //==========멤버십별 데이터 정리====================================================
		 HashMap<String, Object> membership_map = new HashMap<String, Object>(); 
		 int cbasic=0,cstandard=0,cpremium=0;
		 
		   for(int i = 0; AnalysisData.size() > i; i++){
			   if(AnalysisData.get(i).get("membership").toString().equals("basic")) {	cbasic++;}
			   if(AnalysisData.get(i).get("membership").toString().equals("standard")) {	cstandard++;}
			   if(AnalysisData.get(i).get("membership").toString().equals("premium")) {	cpremium++;}
		   }
		    
		   membership_map.put("basic",cbasic);
		   membership_map.put("standard",cstandard);
		   membership_map.put("premium",cpremium);
	 //====================================================================    	 


    //==========멤버십 사용 여부 데이터 정리====================================================
		   HashMap<String, Object> memberchk_map = new HashMap<String, Object>(); 
		   int yes=0,no=0;
		   
		   for(int i = 0; monthAnalysisData.size() > i; i++){
			   if(monthAnalysisData.get(i).get("membership_chk").toString().equals("true")) {
				   yes++;
			   }
			   if(monthAnalysisData.get(i).get("membership_chk").toString().equals("false")) {
				   no++;
			   }
		   }
		   
		   memberchk_map.put("true",yes);
		   memberchk_map.put("false",no);
		   
		model.addAttribute("month_map",month_map);
		model.addAttribute("age_map",age_map);
		model.addAttribute("membership_map",membership_map);
		model.addAttribute("memberchk_map",memberchk_map);

		model.addAttribute("memberList",adminMemberService.getAllMember(map)); //회원 전체 데이터 전송
		return "/admin/analysis_member";		
	}
}
