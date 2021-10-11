package com.mgr.netflix.admin.ticket.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.mgr.netflix.admin.ticket.service.AdminTicketService;
import com.mgr.netflix.admin.ticket.vo.AdminTicketVO;

@Controller
public class AdminTicketController {
	
	@Autowired
	private AdminTicketService adminTicketService;
	
	@RequestMapping("/ticket.ado")
	public String getAllTicket(Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		List<AdminTicketVO> ticketList;
		
		ticketList=adminTicketService.getAllTicket(map);
		model.addAttribute("ticketList",ticketList);
		
		return "/admin/ticket";
	}
	
	@ResponseBody
	@RequestMapping(value ="/ticketInsert.ado" ,produces = "application/json; charset=utf8")
	public int insertTicket(AdminTicketVO vo) {
		System.out.println("AdminTicketController load for inserting Ticket");
		int result = adminTicketService.insertTicket(vo);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value ="/ticketDelete.ado" ,produces = "application/json; charset=utf8")
	public int deleteTicket(AdminTicketVO vo) {
		System.out.println("AdminTicketController load for deleting Ticket");
		int result = adminTicketService.deleteTicket(vo);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value ="/ticketModify.ado" ,produces = "application/json; charset=utf8")
	public int modifyTicket(AdminTicketVO vo) {
		System.out.println("AdminTicketController load for modifying Ticket");
		int result = adminTicketService.modifyTicket(vo);
		return result;
	}

}
