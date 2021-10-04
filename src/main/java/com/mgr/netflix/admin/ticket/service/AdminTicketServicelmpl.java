package com.mgr.netflix.admin.ticket.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mgr.netflix.admin.ticket.service.AdminTicketService;
import com.mgr.netflix.admin.ticket.dao.AdminTicketDAO;
import com.mgr.netflix.admin.ticket.vo.AdminTicketVO;

@Service("adminTicketService")
public class AdminTicketServicelmpl implements AdminTicketService{
	
	@Autowired
	private AdminTicketDAO<AdminTicketVO> TicketDAO;

	@Override
	public List<AdminTicketVO> getAllTicket(HashMap<String, Object> map) {
		return TicketDAO.getAllTicket(map);
	}
	
	


}
