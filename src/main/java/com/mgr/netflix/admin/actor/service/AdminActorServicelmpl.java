package com.mgr.netflix.admin.actor.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mgr.netflix.admin.actor.dao.AdminActorDAO;
import com.mgr.netflix.admin.actor.vo.AdminActorVO;


@Service("adminActorService")
public class AdminActorServicelmpl implements AdminActorService{
	
	@Autowired
	private AdminActorDAO<AdminActorVO> ActorDAO;

	@Override
	public List<AdminActorVO> getAllActor(HashMap<String, Object> map) {
		return ActorDAO.getAllActor(map);
	}

	@Override
	public int insertActor(AdminActorVO vo) {
		return ActorDAO.insertActor(vo);
	}

	@Override
	public int deleteActor(AdminActorVO vo) {
		return ActorDAO.deleteActor(vo);
	}

	@Override
	public int modifyActor(AdminActorVO vo) {
		return ActorDAO.modifyActor(vo);
	}

}
