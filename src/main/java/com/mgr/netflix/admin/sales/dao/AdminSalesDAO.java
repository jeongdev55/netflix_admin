package com.mgr.netflix.admin.sales.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mgr.netflix.admin.sales.vo.AdminSalesVO;


@Repository
public class AdminSalesDAO<AdminSalesVO>{
	
	@Autowired
    private SqlSessionTemplate mybatis;
	
	public List<AdminSalesVO> getAllSales(HashMap<String, Object> map){
		System.out.println("DAO - Sales - getAllSales - MyBatis 실행 ------");
		return mybatis.selectList("Sales.getAllSales",map);	
	}
	
	public int deleteSales(AdminSalesVO vo) {
    	System.out.println("DAO - Sales - deleteSales - MyBatis 실행 ------");
		return mybatis.delete("Sales.deleteSales",vo);
	}

}
