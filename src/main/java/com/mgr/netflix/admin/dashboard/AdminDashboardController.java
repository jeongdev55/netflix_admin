package com.mgr.netflix.admin.dashboard;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mgr.netflix.admin.content.service.AdminContentService;
import com.mgr.netflix.admin.member.service.AdminMemberService;

@Controller
public class AdminDashboardController {
	
	@Autowired
	private AdminMemberService adminMemberService;
	
	@Autowired
	private AdminContentService adminContentService;
	

	
	@RequestMapping("/adminDash.ado")
	public String getDashboard(Model model){
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		List<Map<String,String>> monthAnalysisData=adminMemberService.monthAnalysisData(); //월별 데이터
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
		
				//========월별 매출 구하기=================================================
				    List<Map<String,String>> monthAnalysisData2=adminMemberService.AnalysisData(); //월별 매출
				    HashMap<String, Object> month_sales_map = new HashMap<String, Object>(); 
				    int Jan2=0,Feb2=0,Mar2=0,Apr2=0,May2=0,Jun2=0,Jul2=0,Aug2=0,Sep2=0,Oct2=0,Nov2=0,Dec2=0;
				    for(int i = 0; monthAnalysisData2.size() > i; i++){
				    	if(monthAnalysisData2.get(i).get("month").toString().equals("01")) {
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("basic")) {	Jan2+=9500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("standard")) {	Jan2+=12500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("premium")) {	Jan2+=14500;	}
				    		}
				    	if(monthAnalysisData2.get(i).get("month").toString().equals("02")) {
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("basic")) {	Feb2+=9500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("standard")) {	Feb2+=12500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("premium")) {	Feb2+=14500;	}
				    		}
				    	if(monthAnalysisData2.get(i).get("month").toString().equals("03")) {
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("basic")) {	Mar2+=9500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("standard")) {	Mar2+=12500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("premium")) {	Mar2+=14500;	}
				    		}
				    	if(monthAnalysisData2.get(i).get("month").toString().equals("04")) {
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("basic")) {	Apr2+=9500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("standard")) {	Apr2+=12500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("premium")) {	Apr2+=14500;	}
				    		}
				    	if(monthAnalysisData2.get(i).get("month").toString().equals("05")) {
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("basic")) {	May2+=9500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("standard")) {	May2+=12500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("premium")) {	May2+=14500;	}
				    		}
				    	if(monthAnalysisData2.get(i).get("month").toString().equals("06")) {
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("basic")) {	Jun2+=9500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("standard")) {	Jun2+=12500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("premium")) {	Jun2+=14500;	}
				    		}
				    	if(monthAnalysisData2.get(i).get("month").toString().equals("07")) {
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("basic")) {	Jul2+=9500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("standard")) {	Jul2+=12500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("premium")) {	Jul2+=14500;	}
				    		}
				    	if(monthAnalysisData2.get(i).get("month").toString().equals("08")) {
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("basic")) {	Aug2+=9500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("standard")) {	Aug2+=12500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("premium")) {	Aug2+=14500;	}
				    		}
				    	if(monthAnalysisData2.get(i).get("month").toString().equals("09")) {
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("basic")) {	Sep2+=9500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("standard")) {	Sep2+=12500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("premium")) {	Sep2+=14500;	}
				    		}
				    	if(monthAnalysisData2.get(i).get("month").toString().equals("10")) {
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("basic")) {	Oct2+=9500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("standard")) {	Oct2+=12500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("premium")) {	Oct2+=14500;	}
				    		}
				    	if(monthAnalysisData2.get(i).get("month").toString().equals("11")) {
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("basic")) {	Nov2+=9500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("standard")) {	Nov2+=12500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("premium")) {	Nov2+=14500;	}
				    		}
				    	if(monthAnalysisData2.get(i).get("month").toString().equals("12")) {
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("basic")) {	Dec2+=9500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("standard")) {	Dec2+=12500;	}
				    		if(monthAnalysisData2.get(i).get("membership").toString().equals("premium")) {	Dec2+=14500;	}
				    		}
				    }
				    
				    month_sales_map.put("01",Jan2);
				    month_sales_map.put("02",Feb2);
				    month_sales_map.put("03",Mar2);
				    month_sales_map.put("04",Apr2);
				    month_sales_map.put("05",May2);
				    month_sales_map.put("06",Jan2);
				    month_sales_map.put("07",Jul2);
				    month_sales_map.put("08",Aug2);
				    month_sales_map.put("09",Sep2);
				    month_sales_map.put("10",Oct2);
				    month_sales_map.put("11",Nov2);
				    month_sales_map.put("12",Dec2);  
				    
				    
				    System.out.println(month_sales_map);
		model.addAttribute("memberList",adminMemberService.getAllMember(map)); //신규 가입자 리스트 전송
		model.addAttribute("contentCnt",adminContentService.getTotalCount(null)); //콘텐츠 수 전송
		model.addAttribute("memberCnt",adminMemberService.getTotalCount(null));	//멤버 수 전송
		
		model.addAttribute("month_map",month_map);
		model.addAttribute("sales_map",month_sales_map);
		return "/admin/dashboard";
	}
	
}
