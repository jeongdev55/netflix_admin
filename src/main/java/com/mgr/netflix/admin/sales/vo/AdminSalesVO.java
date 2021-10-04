package com.mgr.netflix.admin.sales.vo;

import java.sql.Date;

public class AdminSalesVO {
	private String sales_id;
	private String member_email;
	private int ticket_id;
	private Date ticket_paydate;
	private Date ticket_exdate;
	private String card_name;
	private String card_number;
	
	
	public String getSales_id() {
		return sales_id;
	}
	public void setSales_id(String sales_id) {
		this.sales_id = sales_id;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public int getTicket_id() {
		return ticket_id;
	}
	public void setTicket_id(int ticket_id) {
		this.ticket_id = ticket_id;
	}
	public Date getTicket_paydate() {
		return ticket_paydate;
	}
	public void setTicket_paydate(Date ticket_paydate) {
		this.ticket_paydate = ticket_paydate;
	}
	public Date getTicket_exdate() {
		return ticket_exdate;
	}
	public void setTicket_exdate(Date ticket_exdate) {
		this.ticket_exdate = ticket_exdate;
	}
	public String getCard_name() {
		return card_name;
	}
	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}
	public String getCard_number() {
		return card_number;
	}
	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}
	
}
