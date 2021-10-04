package com.mgr.netflix.admin.director.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.mgr.netflix.admin.director.service.AdminDirectorService;
import com.mgr.netflix.admin.director.vo.AdminDirectorVO;



@Controller
public class AdminDirectorController {

	@Autowired
	private AdminDirectorService adminDirectorService;
	
	@RequestMapping("/director.ado")
	public String getAllTicket(Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		List<AdminDirectorVO> directorList;
		
		directorList=adminDirectorService.getAllDirector(map);
		model.addAttribute("directorList",directorList);
		
		return "director";
	}
	
	@ResponseBody
	@RequestMapping(value ="/directorInsert.ado" ,produces = "application/json; charset=utf8")
	public int insertDirector(AdminDirectorVO vo) {
		System.out.println("AdminDirectorController load for inserting Director");
		int result = adminDirectorService.insertDirector(vo);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value ="/directorDelete.ado" ,produces = "application/json; charset=utf8")
	public int deleteDirector(AdminDirectorVO vo) {
		System.out.println("AdminDirectorController load for deleting Director");
		int result = adminDirectorService.deleteDirector(vo);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value ="/directorModify.ado" ,produces = "application/json; charset=utf8")
	public int modifyDirector(AdminDirectorVO vo) {
		System.out.println("AdminDirectorController load for modifying Director");
		int result = adminDirectorService.modifyDirector(vo);
		return result;
	}
}
