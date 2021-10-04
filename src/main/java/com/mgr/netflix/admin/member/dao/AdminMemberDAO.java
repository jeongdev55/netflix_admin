package com.mgr.netflix.admin.member.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mgr.netflix.admin.member.vo.AdminMemberVO;



@Repository
public class AdminMemberDAO {
	
	@Autowired
    private SqlSessionTemplate mybatis;
	
	public List<AdminMemberVO> getAllMember(HashMap<String, Object> map){
    	System.out.println("DAO - Member - getAllMember - MyBatis 실행 ------");
		return mybatis.selectList("Member.getAllMember",map);	
	}
	
	public List<Map<String, String>> getMonthCount(){
		System.out.println("member-MyBatis - Chart- 월별 회원 카운트 조회");
		return mybatis.selectList("Member.getmonthData");
	}
	
	public AdminMemberVO getOneMember(AdminMemberVO vo)throws Exception{
    	System.out.println("DAO - Member - getOneMember - MyBatis 실행 ------");
		return mybatis.selectOne("Member.getOneMember",vo);
	}
	
	public int getTotalCount(HashMap<String, Object> map) {
    	System.out.println("DAO - Member - getTotalCount - MyBatis 실행 ------");
		return mybatis.selectOne("Member.getTotalCount");
	}
	
	public int insertMember(AdminMemberVO vo) {
    	System.out.println("DAO - Member - insertMember - MyBatis 실행 ------");
		return mybatis.insert("Member.insertMember",vo);
	}
	
	public int deleteMember(AdminMemberVO vo) {
    	System.out.println("DAO - Member - deleteMember - MyBatis 실행 ------");
		return mybatis.delete("Member.deleteMember",vo);
	}
	
	public int modifyMember(AdminMemberVO vo) {
    	System.out.println("DAO - Member - modifyMember - MyBatis 실행 ------");
		return mybatis.update("Member.modifyMember",vo);
	}
	

}
