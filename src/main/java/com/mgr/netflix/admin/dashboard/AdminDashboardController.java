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
			
		List<Map<String,String>> countMember=adminMemberService.getMonthCount(); //chart를 위한 월별 회원 데이터


		
		//System.out.println();
		model.addAttribute("countMember",countMember);//월별 데이터 전송
		model.addAttribute("memberList",adminMemberService.getAllMember(map)); //회원 전체 데이터 전송
		model.addAttribute("memberCnt",adminMemberService.getTotalCount(null));	//회원 수 데이터 전송
		model.addAttribute("contentCnt",adminContentService.getTotalCount(null)); //컨텐츠 수 데이터 전송


		return "dashboard";
	}
	
}
