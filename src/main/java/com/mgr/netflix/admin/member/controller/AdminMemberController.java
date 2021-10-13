package com.mgr.netflix.admin.member.controller;

import java.util.HashMap;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mgr.netflix.admin.member.service.AdminMemberService;
import com.mgr.netflix.admin.member.vo.AdminMemberVO;
import com.mgr.netflix.admin.ticket.service.AdminTicketService;



@Controller
public class AdminMemberController {

	@Autowired
	private AdminMemberService adminMemberService;
	
	@Autowired
	private AdminTicketService adminTicketService;

	
	@RequestMapping("/member.ado")
	public String getAllMember(Model model){
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		List<AdminMemberVO> memberList;
		memberList = adminMemberService.getAllMember(map);

		
		model.addAttribute("memberList", memberList);
		return "admin/member";		
	}
	
	@RequestMapping("/member_insertgo.ado")
	public String member_Insertgo(Model model) throws Exception{
		HashMap<String, Object> map = new HashMap<String, Object>();
		model.addAttribute("ticketList",adminTicketService.getAllTicket(map));
		return "admin/member_insert";
	}
	
	@RequestMapping("/member_modifygo.ado")
	public String member_modifygo(Model model,AdminMemberVO vo) throws Exception{
		HashMap<String, Object> map = new HashMap<String, Object>();
		model.addAttribute("ticketList2",adminTicketService.getAllTicket(map));
		
		model.addAttribute("oneList",adminMemberService.getOneMember(vo));
		return "admin/member_modify";
	}
	
	@ResponseBody
	@RequestMapping(value="/memberInsert.ado",produces = "application/json; charset=utf8")
	public int InsertMember(AdminMemberVO vo) {
		int result=adminMemberService.insertMember(vo);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/memberDelete.ado",produces = "application/json; charset=utf8")
	public int DeleteMember(AdminMemberVO vo) {
		int result=adminMemberService.deleteMember(vo);
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/memberModify.ado",produces = "application/json; charset=utf8")
	public int ModifyMember(AdminMemberVO vo) {
		int result=adminMemberService.modifyMember(vo);
		return result;
	}
	
	
	@RequestMapping("/sales.ado")
	public String getAllSales(Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		List<AdminMemberVO> salesList;
		salesList=adminMemberService.getAllSales(map);
		model.addAttribute("salesList",salesList);
		
		return "/admin/sales";
	}
	
	@ResponseBody
	@RequestMapping(value ="/salesDelete.ado" ,produces = "application/json; charset=utf8")
	public int deleteSales(AdminMemberVO vo) {
		System.out.println("AdminSalesController load for deleting Sales");
		int result = adminMemberService.deleteSales(vo);
		return result;
	}
	
	
}