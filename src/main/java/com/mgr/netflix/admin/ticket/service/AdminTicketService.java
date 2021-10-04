package com.mgr.netflix.admin.ticket.service;

import java.util.HashMap;
import java.util.List;

import com.mgr.netflix.admin.ticket.vo.AdminTicketVO;


public interface AdminTicketService {

	List<AdminTicketVO> getAllTicket(HashMap<String, Object> map);
	int insertTicket(AdminTicketVO vo);
	int deleteTicket(AdminTicketVO vo);
	int modifyTicket(AdminTicketVO vo);
	
}
