package com.mgr.netflix.admin.actor.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminActorDAO<AdminActorVO> {
	
	@Autowired
    private SqlSessionTemplate mybatis;
	
	public List<AdminActorVO> getAllActor(HashMap<String, Object> map){
		System.out.println("DAO - Actor - getAllActor - MyBatis 실행 ------");
		return mybatis.selectList("Actor.getAllActor",map);	
	}
	
	public int insertActor(AdminActorVO vo) {
    	System.out.println("DAO - Actor - insertActor - MyBatis 실행 ------");
		return mybatis.insert("Actor.insertActor",vo);
	}
	
	public int deleteActor(AdminActorVO vo) {
    	System.out.println("DAO - Actor - deleteActor - MyBatis 실행 ------");
		return mybatis.delete("Actor.deleteActor",vo);
	}
	
	public int modifyActor(AdminActorVO vo) {
    	System.out.println("DAO - Actor - modifyActor - MyBatis 실행 ------");
		return mybatis.update("Actor.modifyActor",vo);
	}

}
