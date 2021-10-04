package com.mgr.netflix.admin.genre.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.admin.genre.dao.AdminGenreDAO;
import com.mgr.netflix.admin.genre.vo.AdminGenreVO;

@Service("adminGenreService")
public class AdminGenreServicelmpl implements AdminGenreService{
	
	@Autowired
	private AdminGenreDAO<AdminGenreVO> GenreDAO;

	@Override
	public List<AdminGenreVO> getAllGenre(HashMap<String, Object> map) {
		return GenreDAO.getAllGenre(map);
	}

	@Override
	public int insertGenre(AdminGenreVO vo) {
		return GenreDAO.insertGenre(vo);
	}

	@Override
	public int deleteGenre(AdminGenreVO vo) {
		return GenreDAO.deleteGenre(vo);
	}

	@Override
	public int modifyGenre(AdminGenreVO vo) {
		return GenreDAO.modifyGenre(vo);
	}

}
