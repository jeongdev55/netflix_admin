package com.mgr.netflix.admin.director.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.admin.director.dao.AdminDirectorDAO;
import com.mgr.netflix.admin.director.vo.AdminDirectorVO;


@Service("adminDirectorService")
public class AdminDirectorServicelmpl implements AdminDirectorService{

	@Autowired
	private AdminDirectorDAO<AdminDirectorVO> DirectorDAO;
	
	@Override
	public List<AdminDirectorVO> getAllDirector(HashMap<String, Object> map) {
		return DirectorDAO.getAllDirector(map);
	}

	@Override
	public int insertDirector(AdminDirectorVO vo) {
		return DirectorDAO.insertDirector(vo);
	}

	@Override
	public int deleteDirector(AdminDirectorVO vo) {
		return DirectorDAO.deleteDirector(vo);
	}

	@Override
	public int modifyDirector(AdminDirectorVO vo) {
		return DirectorDAO.modifyDirector(vo);
	}

}
