package com.mgr.netflix.admin.director.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class AdminDirectorDAO<AdminDirectorVO> {
	@Autowired
    private SqlSessionTemplate mybatis;
	
	public List<AdminDirectorVO> getAllDirector(HashMap<String, Object> map){
		System.out.println("DAO - Director - getAllDirector - MyBatis 실행 ------");
		return mybatis.selectList("Director.getAllDirector",map);	
	}
	
	
	public int insertDirector(AdminDirectorVO vo) {
    	System.out.println("DAO - Actor - insertDirector - MyBatis 실행 ------");
		return mybatis.insert("Director.insertDirector",vo);
	}
	
	public int deleteDirector(AdminDirectorVO vo) {
    	System.out.println("DAO - Actor - deleteDirector - MyBatis 실행 ------");
		return mybatis.delete("Director.deleteDirector",vo);
	}
	
	public int modifyDirector(AdminDirectorVO vo) {
    	System.out.println("DAO - Actor - modifyDirector - MyBatis 실행 ------");
		return mybatis.update("Director.modifyDirector",vo);
	}
}
