package com.mgr.netflix.admin.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mgr.netflix.admin.member.service.AdminMemberService;
import com.mgr.netflix.admin.member.dao.AdminMemberDAO;
import com.mgr.netflix.admin.member.vo.AdminMemberVO;



@Service("adminMemberService")
public class AdminMemberServiceImpl implements AdminMemberService {

	@Autowired
	private AdminMemberDAO MemberDAO;
	


	
	@Override
	public int getTotalCount(HashMap<String, Object> map) {
		return MemberDAO.getTotalCount(map);
	}

	@Override
	public List<AdminMemberVO> getAllMember(HashMap<String, Object> map) {
		return MemberDAO.getAllMember(map);
	}

	@Override
	public int insertMember(AdminMemberVO vo) {
		return MemberDAO.insertMember(vo);
	}

	@Override
	public int deleteMember(AdminMemberVO vo) {
		return MemberDAO.deleteMember(vo);
	}

	@Override
	public int modifyMember(AdminMemberVO vo) {
		return MemberDAO.modifyMember(vo);
	}

	@Override
	public AdminMemberVO getOneMember(AdminMemberVO vo) throws Exception {
		return MemberDAO.getOneMember(vo);
	}


	@Override
	public List<Map<String, String>> monthAnalysisData() {
		return MemberDAO.monthAnalysisData();
	}

	@Override
	public List<AdminMemberVO> getAllSales(HashMap<String, Object> map) {
		return MemberDAO.getAllSales(map);
	}

	@Override
	public int deleteSales(AdminMemberVO vo) {
		return MemberDAO.deleteSales(vo);
	}

	@Override
	public List<Map<String, String>> AnalysisData() {
		return MemberDAO.AnalysisData();
	}
	
	

	}
