package com.mgr.netflix.admin.ticket.vo;

public class AdminTicketVO {
	private String ticket_id;
	private String ticket_name;
	private int ticket_limited;
	private int ticket_price;
	private String ticket_content;

	
	public String getTicket_id() {
		return ticket_id;
	}
	public void setTicket_id(String ticket_id) {
		this.ticket_id = ticket_id;
	}
	public String getTicket_name() {
		return ticket_name;
	}
	public void setTicket_name(String ticket_name) {
		this.ticket_name = ticket_name;
	}
	public int getTicket_limited() {
		return ticket_limited;
	}
	public void setTicket_limited(int ticket_limited) {
		this.ticket_limited = ticket_limited;
	}
	public int getTicket_price() {
		return ticket_price;
	}
	public void setTicket_price(int ticket_price) {
		this.ticket_price = ticket_price;
	}
	public String getTicket_content() {
		return ticket_content;
	}
	public void setTicket_content(String ticket_content) {
		this.ticket_content = ticket_content;
	}

}
