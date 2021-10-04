package com.mgr.netflix.admin.manager.service;

import java.util.HashMap;
import java.util.List;

import com.mgr.netflix.admin.manager.vo.AdminManagerVO;



public interface AdminManagerService {
	
	public AdminManagerVO Login(AdminManagerVO vo) throws Exception;
	List<AdminManagerVO> getAllManager(HashMap<String, Object> map);
	int insertManager(AdminManagerVO vo);
	int deleteManager(AdminManagerVO vo);
	int modifyManager(AdminManagerVO vo);
	int getTotalCount(HashMap<String, Object> map);
}
