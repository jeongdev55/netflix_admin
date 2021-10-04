package com.mgr.netflix.admin.manager.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mgr.netflix.admin.manager.vo.AdminManagerVO;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class AdminManagerDAO {
	
	@Autowired
    private SqlSessionTemplate mybatis;

    public AdminManagerVO Login(AdminManagerVO vo) throws Exception {
    	System.out.println("DAO - Manager - Login - MyBatis 실행 ------");
        return mybatis.selectOne("Manager.Login", vo);
    }
	public List<AdminManagerVO> getAllManager(HashMap<String, Object> map){
    	System.out.println("DAO - Manager - getAllManager - MyBatis 실행 ------");
		return mybatis.selectList("Manager.getAllManager",map);
	}
	
	public int insertManager(AdminManagerVO vo) {
    	System.out.println("DAO - Manager - insertManager - MyBatis 실행 ------");
		return mybatis.insert("Manager.insertManager",vo);
	}
	
	public int deleteManager(AdminManagerVO vo) {
    	System.out.println("DAO - Manager - deleteManager - MyBatis 실행 ------");
		return mybatis.delete("Manager.deleteManager",vo);
	}
	
	public int modifyManager(AdminManagerVO vo) {
    	System.out.println("DAO - Manager - modifyManager - MyBatis 실행 ------");
		return mybatis.update("Manager.modifyManager",vo);
	}
	
	public int getTotalCount(HashMap<String, Object> map) {
		System.out.println("DAO - Manager - getTotalCount - MyBatis 실행 ------");
		return mybatis.selectOne("manager.getTotalCount",map);
	}
}
