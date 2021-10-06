package com.mgr.netflix.admin.analysis.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		model.addAttribute("countMember",countMember);//월별 데이터 전송

		model.addAttribute("memberList",adminMemberService.getAllMember(map)); //회원 전체 데이터 전송
		return "analysis_member";		
	}
}
