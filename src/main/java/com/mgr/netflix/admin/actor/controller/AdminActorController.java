package com.mgr.netflix.admin.actor.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mgr.netflix.admin.actor.service.AdminActorService;
import com.mgr.netflix.admin.actor.vo.AdminActorVO;


@Controller
public class AdminActorController {
	@Autowired
	private AdminActorService adminActorService;
	
	@RequestMapping("/actor.ado")
	public String getAllActor(Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		List<AdminActorVO> actorList;
		
		actorList=adminActorService.getAllActor(map);
		model.addAttribute("actorList",actorList);
		
		return "/admin/actor";
	}
	
	
	
	
	@ResponseBody
	@RequestMapping(value ="/actorInsert.ado" ,produces = "application/json; charset=utf8")
	public int insertActor(AdminActorVO vo) {
		System.out.println("AdminActorController load for inserting Actor");
		int result = adminActorService.insertActor(vo);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value ="/actorDelete.ado" ,produces = "application/json; charset=utf8")
	public int deleteActor(AdminActorVO vo) {
		System.out.println("AdminActorController load for deleting Actor");
		int result = adminActorService.deleteActor(vo);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value ="/actorModify.ado" ,produces = "application/json; charset=utf8")
	public int modifyActor(AdminActorVO vo) {
		System.out.println("AdminActorController load for modifying Actor");
		int result = adminActorService.modifyActor(vo);
		return result;
	}

}
