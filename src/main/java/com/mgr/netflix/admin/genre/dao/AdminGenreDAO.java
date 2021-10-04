package com.mgr.netflix.admin.genre.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class AdminGenreDAO<AdminGenreVO> {
	@Autowired
    private SqlSessionTemplate mybatis;
	
	public List<AdminGenreVO> getAllGenre(HashMap<String, Object> map){
		System.out.println("DAO - Genre - getAllGenre - MyBatis 실행 ------");
		return mybatis.selectList("Genre.getAllGenre",map);	
	}
	
	public int insertGenre(AdminGenreVO vo) {
    	System.out.println("DAO - Genre - insertGenre - MyBatis 실행 ------");
		return mybatis.insert("Genre.insertGenre",vo);
	}
	
	public int deleteGenre(AdminGenreVO vo) {
    	System.out.println("DAO - Genre - deleteGenre - MyBatis 실행 ------");
		return mybatis.delete("Genre.deleteGenre",vo);
	}
	
	public int modifyGenre(AdminGenreVO vo) {
    	System.out.println("DAO - Genre - modifyGenre - MyBatis 실행 ------");
		return mybatis.update("Genre.modifyGenre",vo);
	}

}
