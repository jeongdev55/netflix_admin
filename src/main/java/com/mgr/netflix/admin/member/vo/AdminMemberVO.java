package com.mgr.netflix.admin.member.vo;

import java.sql.Date;

public class AdminMemberVO {
	private String email;
	private String password;
	private String membership;
	private String membership_chk;
	private Date membership_date;
	private String name;
	private String cardnum;
	private String expiredate;
	private String birthyear;
	private String birthmonth;
	private String birthday;
	
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	private String month;
	private Date joindate;
	
	public String getExpiredate() {
		return expiredate;
	}
	public void setExpiredate(String expiredate) {
		this.expiredate = expiredate;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMembership() {
		return membership;
	}
	public void setMembership(String membership) {
		this.membership = membership;
	}
	public String getMembership_chk() {
		return membership_chk;
	}
	public void setMembership_chk(String membership_chk) {
		this.membership_chk = membership_chk;
	}
	public Date getMembership_date() {
		return membership_date;
	}
	public void setMembership_date(Date membership_date) {
		this.membership_date = membership_date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCardnum() {
		return cardnum;
	}
	public void setCardnum(String cardnum) {
		this.cardnum = cardnum;
	}
	public String getBirthyear() {
		return birthyear;
	}
	public void setBirthyear(String birthyear) {
		this.birthyear = birthyear;
	}
	public String getBirthmonth() {
		return birthmonth;
	}
	public void setBirthmonth(String birthmonth) {
		this.birthmonth = birthmonth;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}

}
