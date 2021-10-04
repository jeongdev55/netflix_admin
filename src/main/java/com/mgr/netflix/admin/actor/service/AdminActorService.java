package com.mgr.netflix.admin.actor.service;

import java.util.HashMap;
import java.util.List;

import com.mgr.netflix.admin.actor.vo.AdminActorVO;

public interface AdminActorService {
	List<AdminActorVO> getAllActor(HashMap<String, Object> map);

	int insertActor(AdminActorVO vo);
	
	int deleteActor(AdminActorVO vo);
	
	int modifyActor(AdminActorVO vo);
}

