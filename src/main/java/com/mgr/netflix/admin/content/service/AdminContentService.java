package com.mgr.netflix.admin.content.service;


import java.util.HashMap;
import java.util.List;

import com.mgr.netflix.admin.content.vo.AdminContentVO;



public interface AdminContentService {
	List<AdminContentVO> getAllContent(AdminContentVO vo);
	
	AdminContentVO getOneContent(AdminContentVO vo)throws Exception;

	int getTotalCount(HashMap<String, Object> map);
	
	int insertContent(AdminContentVO vo);
	
	int deleteContent(AdminContentVO vo);
	
	int modifyContent(AdminContentVO vo);

	
}
