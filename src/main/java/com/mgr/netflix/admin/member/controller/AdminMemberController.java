package com.mgr.netflix.admin.member.controller;

import java.util.HashMap;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.mgr.netflix.admin.member.service.AdminMemberService;
import com.mgr.netflix.admin.member.vo.AdminMemberVO;




@Controller
public class AdminMemberController {

	@Autowired
	private AdminMemberService adminMemberService;
	


	
	
	@RequestMapping("/member.ado")
	public String getAllMember(Model model){
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		List<AdminMemberVO> memberList;
		memberList = adminMemberService.getAllMember(map);
		
		model.addAttribute("memberList", memberList);
		return "member";		
	}






	
}