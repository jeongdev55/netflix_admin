package com.mgr.netflix.admin.manager.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.jdbc.datasource.init.ScriptUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.mgr.netflix.admin.manager.service.AdminManagerService;
import com.mgr.netflix.admin.manager.vo.AdminManagerVO;
import com.mgr.netflix.admin.member.vo.AdminMemberVO;


@Controller
public class AdminManagerController {
	
	@Resource(name = "adminManagerService")  ////////////////
	private AdminManagerService adminManagerService;
	
	//============로그인 처리=============================
	//============로그인 처리=============================
	//============로그인 처리=============================
	@RequestMapping("/admin_login.ado")
	public String adminLogin(Model model) throws Exception{
		return "/admin/login";
	}
	
    @RequestMapping(value = "/login_check.ado", method = RequestMethod.POST)
    public String Login(@RequestParam("email") String email
		                       , @RequestParam("pass") String pass,
		                       HttpSession session,
		                       HttpServletResponse response) throws Exception {
        
        AdminManagerVO vo = new AdminManagerVO();

        vo.setEmail(email);
        vo.setPass(pass);

        AdminManagerVO adminLogin = adminManagerService.Login(vo);

        if(adminLogin != null) {
        	System.out.println("로그인 " +adminLogin.getEmail()+ "성공");
        	session.setAttribute("manager", adminLogin);
        	return "redirect:/adminDash.ado";
        }
		return "redirect:/admin_login.ado"; 
    }
    
  //============로그인아웃 처리=============================
 
	@RequestMapping("/admin_logout.ado")
	public String adminLogout(HttpSession session) throws Exception{
		if(session !=null) {
        	System.out.println("로그아웃");
			session.invalidate();
		}
		return "redirect:/admin_login.ado";
	}
    
    
    
	//============매니저 관리=============================
	@RequestMapping(value ="/manager.ado" ,produces = "application/json; charset=utf8")
	public String GetAllManager(Model model){
		HashMap<String, Object> map = new HashMap<String, Object>();
		List<AdminManagerVO> managerList;
		managerList = adminManagerService.getAllManager(map);
		model.addAttribute("managerList",managerList);
		return "/admin/manager";
	}
	
	
	@ResponseBody
	@RequestMapping(value ="/managerInsert.ado" ,produces = "application/json; charset=utf8")
	public int InsertManager(AdminManagerVO vo) {
		System.out.println("AdminManagerController load for inserting manager");
		int result = adminManagerService.insertManager(vo);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value ="/managerDelete.ado" ,produces = "application/json; charset=utf8")
	public int deleteManager(AdminManagerVO vo) {
		System.out.println("AdminManagerController load for deleting manager");
		int result = adminManagerService.deleteManager(vo);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value ="/managerModify.ado" ,produces = "application/json; charset=utf8")
	public int modifyManager(AdminManagerVO vo) {
		System.out.println("AdminManagerController load for modifying manager");
		int result = adminManagerService.modifyManager(vo);
		return result;
	}
	
	
	
	

}
	
	

	
	

