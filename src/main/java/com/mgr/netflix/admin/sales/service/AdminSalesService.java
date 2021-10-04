package com.mgr.netflix.admin.sales.service;

import java.util.HashMap;
import java.util.List;

import com.mgr.netflix.admin.sales.vo.AdminSalesVO;

public interface AdminSalesService {
	List<AdminSalesVO> getAllSales(HashMap<String, Object> map);

	int deleteSales(AdminSalesVO vo);

}
