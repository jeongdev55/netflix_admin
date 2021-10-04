package com.mgr.netflix.admin.director.service;

import java.util.HashMap;
import java.util.List;

import com.mgr.netflix.admin.director.vo.AdminDirectorVO;

public interface AdminDirectorService {
	List<AdminDirectorVO> getAllDirector(HashMap<String, Object> map);
	int insertDirector(AdminDirectorVO vo);
	int deleteDirector(AdminDirectorVO vo);
	int modifyDirector(AdminDirectorVO vo);
}
