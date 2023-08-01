package com.multi.bbs.Arboretum.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.bbs.Arboretum.model.mapper.arboretumMapper;
import com.multi.bbs.Arboretum.model.vo.TourVO;
import com.multi.bbs.common.util.PageInfo;


@Service
public class arboretumService {
	
	@Autowired // 의존성 주입
	private arboretumMapper mapper; // 매퍼 인터페이스를 멤버 변수로 선언
	
	
	public List<TourVO> selectArboretumList(PageInfo pageInfo, Map<String, Object> param) {
	    param.put("limit", pageInfo.getListLimit());
	    param.put("offset", (pageInfo.getStartList() - 1));
	    return mapper.selectArboretumList(param);
	}

}
