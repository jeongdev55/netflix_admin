   
package com.mgr.netflix.admin.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mgr.netflix.admin.member.vo.AdminMemberVO;


public interface AdminMemberService {
	
	int getTotalCount(HashMap<String, Object> map); 	
	
	List<Map<String, String>> monthAnalysisData();
	List<Map<String, String>> AnalysisData();
	
	List<AdminMemberVO> getAllMember(HashMap<String, Object> map);
	
	AdminMemberVO getOneMember(AdminMemberVO vo) throws Exception;

	int insertMember(AdminMemberVO vo);

	int deleteMember(AdminMemberVO vo);

	int modifyMember(AdminMemberVO vo);
	
	List<AdminMemberVO> getAllSales(HashMap<String, Object> map);
	
	int deleteSales(AdminMemberVO vo);
	
}