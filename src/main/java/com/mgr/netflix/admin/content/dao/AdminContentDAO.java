package com.mgr.netflix.admin.content.dao;


import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mgr.netflix.admin.content.vo.AdminContentVO;




@Repository
public class AdminContentDAO <AdminContentVO> {
	@Autowired
    private SqlSessionTemplate mybatis;
	
	public List<AdminContentVO> getAllContent(AdminContentVO vo){ // 카테고리별 모든 콘텐츠 출력
		System.out.println("DAO - Content - getAllContent - MyBatis 실행 ------");
		return mybatis.selectList("Content.getAllContent",vo);	
	}
	
	
	public AdminContentVO getOneContent(AdminContentVO vo)throws Exception{
		System.out.println("DAO - Content - getOneContent - MyBatis 실행 ------");
		return mybatis.selectOne("Content.getOneContent",vo);
	}
	
	public int getTotalCount(HashMap<String, Object> map) {
    	System.out.println("DAO - Content - getTotalCount - MyBatis 실행 ------");
		return mybatis.selectOne("Content.getTotalCount");
	}
	
	public int insertContent(AdminContentVO vo) {
    	System.out.println("DAO - Content - insertContent - MyBatis 실행 ------");
		return mybatis.insert("Content.insertContent",vo);
	}
	
	public int deleteContent(AdminContentVO vo) {
    	System.out.println("DAO - Content - deleteContent - MyBatis 실행 ------");
		return mybatis.delete("Content.deleteContent",vo);
	}
	
	public int modifyContent(AdminContentVO vo) {
    	System.out.println("DAO - Content - modifyContent - MyBatis 실행 ------");
		return mybatis.update("Content.modifyContent",vo);
	}

}
