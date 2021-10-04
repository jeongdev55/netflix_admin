package com.mgr.netflix.admin.ticket.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		
		return "ticket";
	}

}
