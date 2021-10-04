package com.mgr.netflix.admin.sales.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.admin.sales.dao.AdminSalesDAO;
import com.mgr.netflix.admin.sales.vo.AdminSalesVO;


@Service("adminSalesService")
public class AdminSalesServicelmpl implements AdminSalesService{
	
	@Autowired
	private AdminSalesDAO<AdminSalesVO> SalesDAO;

	@Override
	public List<AdminSalesVO> getAllSales(HashMap<String, Object> map) {
		return SalesDAO.getAllSales(map);
	}

	@Override
	public int deleteSales(AdminSalesVO vo) {
		return SalesDAO.deleteSales(vo);
	}

}
