package com.mgr.netflix.admin.genre.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mgr.netflix.admin.genre.service.AdminGenreService;
import com.mgr.netflix.admin.genre.vo.AdminGenreVO;


@Controller
public class AdminGenreController {
	
	@Autowired
	private AdminGenreService adminGenreService;
	
	@RequestMapping("/genre.ado")
	public String getAllGenre(Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		List<AdminGenreVO> genreList;
		
		genreList=adminGenreService.getAllGenre(map);
		model.addAttribute("genreList",genreList);
		
		return "/admin/genre";
	}
	
	@ResponseBody
	@RequestMapping(value ="/genreInsert.ado" ,produces = "application/json; charset=utf8")
	public int insertGenre(AdminGenreVO vo) {
		System.out.println("AdminGenreController load for inserting Genre");
		int result = adminGenreService.insertGenre(vo);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value ="/genreDelete.ado" ,produces = "application/json; charset=utf8")
	public int deleteGenre(AdminGenreVO vo) {
		System.out.println("AdminGenreController load for deleting Genre");
		int result = adminGenreService.deleteGenre(vo);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value ="/genreModify.ado" ,produces = "application/json; charset=utf8")
	public int modifyGenre(AdminGenreVO vo) {
		System.out.println("AdminGenreController load for modifying Genre");
		int result = adminGenreService.modifyGenre(vo);
		return result;
	}

}
