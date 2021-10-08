package com.mgr.netflix.admin.dashboard;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.mgr.netflix.admin.member.service.AdminMemberService;

@Controller
public class AdminDashboardController {
	
	@Autowired
	private AdminMemberService adminMemberService;
	

	
	@RequestMapping("/adminDash.ado")
	public String getDashboard(Model model){
		
		HashMap<String, Object> map = new HashMap<String, Object>();

		model.addAttribute("memberList",adminMemberService.getAllMember(map));
		model.addAttribute("memberCnt",adminMemberService.getTotalCount(null));		
		return "dashboard";
	}
	
}
