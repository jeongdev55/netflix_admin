package com.mgr.netflix.admin.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mgr.netflix.admin.member.vo.AdminMemberVO;


public interface AdminMemberService {
	
	int getTotalCount(HashMap<String, Object> map); 
	
	List<Map<String, String>> getMonthCount();
	
	List<Map<String, String>> getAnalysisData();
	
	List<AdminMemberVO> getAllMember(HashMap<String, Object> map);
	
	AdminMemberVO getOneMember(AdminMemberVO vo) throws Exception;

	int insertMember(AdminMemberVO vo);

	int deleteMember(AdminMemberVO vo);

	int modifyMember(AdminMemberVO vo);
	
	
}
