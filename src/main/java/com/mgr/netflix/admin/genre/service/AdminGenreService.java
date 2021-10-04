package com.mgr.netflix.admin.genre.service;

import java.util.HashMap;
import java.util.List;

import com.mgr.netflix.admin.genre.vo.AdminGenreVO;

public interface AdminGenreService {
	List<AdminGenreVO> getAllGenre(HashMap<String, Object> map);
	int insertGenre(AdminGenreVO vo);
	int deleteGenre(AdminGenreVO vo);
	int modifyGenre(AdminGenreVO vo);
}
