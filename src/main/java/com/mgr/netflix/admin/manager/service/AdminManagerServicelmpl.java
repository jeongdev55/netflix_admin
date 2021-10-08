package com.mgr.netflix.admin.manager.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.admin.manager.dao.AdminManagerDAO;
import com.mgr.netflix.admin.manager.vo.AdminManagerVO;
import com.mgr.netflix.admin.member.vo.AdminMemberVO;

@Service("adminManagerService")
public class AdminManagerServicelmpl implements AdminManagerService {

	@Autowired
	private  AdminManagerDAO adminManagerDAO;

	@Override
	public AdminManagerVO Login(AdminManagerVO vo) throws Exception {
		return adminManagerDAO.Login(vo);
	}

	@Override
	public List<AdminManagerVO> getAllManager(HashMap<String, Object> map) {
		return adminManagerDAO.getAllManager(map);
	}

	@Override
	public int insertManager(AdminManagerVO vo) {
		return adminManagerDAO.insertManager(vo);
	}

	@Override
	public int deleteManager(AdminManagerVO vo) {
		return adminManagerDAO.deleteManager(vo);
	}

	@Override
	public int modifyManager(AdminManagerVO vo) {
		return adminManagerDAO.modifyManager(vo);
	}

	@Override
	public int getTotalCount(HashMap<String, Object> map) {
		return adminManagerDAO.getTotalCount(map);
	}

    }

