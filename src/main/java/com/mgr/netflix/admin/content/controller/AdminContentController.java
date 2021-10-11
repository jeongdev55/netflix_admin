package com.mgr.netflix.admin.content.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mgr.netflix.admin.actor.service.AdminActorService;
import com.mgr.netflix.admin.content.service.AdminContentService;
import com.mgr.netflix.admin.content.vo.AdminContentVO;
import com.mgr.netflix.admin.director.service.AdminDirectorService;
import com.mgr.netflix.admin.genre.service.AdminGenreService;
import com.mgr.netflix.admin.member.vo.AdminMemberVO;



@Controller
public class AdminContentController {
	@Autowired
	private AdminContentService adminContentService;
	@Autowired
	private AdminActorService adminActorService;
	@Autowired
	private AdminDirectorService adminDirectorService;
	@Autowired
	private AdminGenreService adminGenreService;
	
	@RequestMapping(value ="/content.ado", method = RequestMethod.GET)
	public String getAllActor(Model model ,@RequestParam("category_name") String category_name,HttpServletRequest request) {
		
		AdminContentVO vo = new AdminContentVO(); //보내기 위한 VO 설정
		
        vo.setCategory_name(category_name); //받아온 카테고리 이름으로 SET
        
        List<AdminContentVO> ContentList = adminContentService.getAllContent(vo);

    	System.out.println(category_name+"컨텐츠 가져오기");
		model.addAttribute("ContentList",ContentList);
		request.setAttribute("category_name", category_name);
		
		return "/admin/content";
	}
	

	@RequestMapping("/content_insertgo.ado")
	public String content_Insertgo(Model model,@RequestParam("category_name") String category_name,HttpServletRequest request) throws Exception{
		HashMap<String, Object> map = new HashMap<String, Object>();

		model.addAttribute("actorList",adminActorService.getAllActor(map)); //배우 목록 전달
		model.addAttribute("directorList",adminDirectorService.getAllDirector(map)); //감독 목록 전달
		model.addAttribute("genreList",adminGenreService.getAllGenre(map)); //장르 목록 전달
		request.setAttribute("category_name", category_name);
		
		return "/admin/content_insert";
	}
	
	@RequestMapping(value ="/content_modifygo.ado")
	public String content_modifygo(Model model, AdminContentVO vo,@RequestParam("category_name") String category_name,HttpServletRequest request) throws Exception{
		HashMap<String, Object> map = new HashMap<String, Object>();

		model.addAttribute("oneList",adminContentService.getOneContent(vo)); //선택된 콘텐츠 정보 가져와서 전달
		model.addAttribute("actorList",adminActorService.getAllActor(map)); //배우 목록 전달
		model.addAttribute("directorList",adminDirectorService.getAllDirector(map)); //감독 목록 전달
		model.addAttribute("genreList",adminGenreService.getAllGenre(map)); //장르 목록 전달
		request.setAttribute("category_name", category_name);
		
		return "/admin/content_modify";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/contentInsert.ado",produces = "application/json; charset=utf8")
	public int InsertContent(AdminContentVO vo) {
		int result=adminContentService.insertContent(vo);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/contentDelete.ado",produces = "application/json; charset=utf8")
	public int DeleteContent(AdminContentVO vo) {
		int result=adminContentService.deleteContent(vo);
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/contentModify.ado",produces = "application/json; charset=utf8")
	public int ModifyContent(AdminContentVO vo) {
		int result=adminContentService.modifyContent(vo);
		return result;
	}
}
