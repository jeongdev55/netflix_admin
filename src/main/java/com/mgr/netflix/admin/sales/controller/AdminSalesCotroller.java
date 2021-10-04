package com.mgr.netflix.admin.sales.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mgr.netflix.admin.sales.service.AdminSalesService;
import com.mgr.netflix.admin.sales.vo.AdminSalesVO;

@Controller
public class AdminSalesCotroller {
	@Autowired
	private AdminSalesService adminSalesService;
	
	@RequestMapping("/sales.ado")
	public String getAllSales(Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		List<AdminSalesVO> salesList;
		
		salesList=adminSalesService.getAllSales(map);
		model.addAttribute("salesList",salesList);
		
		return "sales";
	}
	
	@ResponseBody
	@RequestMapping(value ="/salesDelete.ado" ,produces = "application/json; charset=utf8")
	public int deleteSales(AdminSalesVO vo) {
		System.out.println("AdminSalesController load for deleting Sales");
		int result = adminSalesService.deleteSales(vo);
		return result;
	}
}
