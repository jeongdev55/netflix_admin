package com.mgr.netflix.admin.content.service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.mgr.netflix.admin.content.dao.AdminContentDAO;
import com.mgr.netflix.admin.content.vo.AdminContentVO;


@Service("adminContentService")
public class AdminContentServicelmpl implements AdminContentService {

	@Autowired
	private AdminContentDAO<AdminContentVO> ContentDAO;

	@Override
	public List<AdminContentVO> getAllContent(AdminContentVO vo) {
		return ContentDAO.getAllContent(vo);
	}

	@Override
	public AdminContentVO getOneContent(AdminContentVO vo) throws Exception {
		return ContentDAO.getOneContent(vo);
	}

	@Override
	public int getTotalCount(HashMap<String, Object> map) {
		return ContentDAO.getTotalCount(map);
	}
	
	@Override
	public int insertContent(AdminContentVO vo) {
		return ContentDAO.insertContent(vo);
	}

	@Override
	public int deleteContent(AdminContentVO vo) {
		return ContentDAO.deleteContent(vo);
	}

	@Override
	public int modifyContent(AdminContentVO vo) {
		return ContentDAO.modifyContent(vo);
	}





}
