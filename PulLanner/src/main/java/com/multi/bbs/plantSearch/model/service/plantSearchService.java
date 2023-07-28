package com.multi.bbs.plantSearch.model.service;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.plantSearch.model.mapper.plantSearchMapper;
import com.multi.bbs.plantSearch.model.vo.FlowerDtl;
import com.multi.bbs.plantSearch.model.vo.GardenDtl;
import com.multi.bbs.plantSearch.model.vo.GardenList;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class plantSearchService {
	@Autowired // 의존성 주입
	private plantSearchMapper mapper; // 매퍼 인터페이스를 멤버 변수로 선언


	// --------------실내식물 관련----------------
	public List<GardenList> selectGardentList(PageInfo pageInfo, Map<String, Object> param) {
	    param.put("limit", String.valueOf(pageInfo.getListLimit())); // 정수를 문자열로 변환하여 추가
	    param.put("offset", String.valueOf(pageInfo.getStartList() - 1)); // 정수를 문자열로 변환하여 추가
	    // 매퍼 인터페이스의 selectGardentList 메서드 호출
	    return mapper.selectGardentList(param);
	}

	public int selectGardenCount(Map<String, Object> map) {
	    // 매퍼 인터페이스의 selectGardenCount 메서드 호출
	    return mapper.selectGardenCount(map);
	}

	public GardenList selectByContentId(int id) {
		return mapper.selectByContentId(id);	
	}
	
	public GardenDtl selectByContentDetailId(int id) {
		return mapper.selectByContentDetailId(id);	
	}
	
	
	
	
	
	// --------------꽃 관련----------------
	public List<FlowerDtl> selectFlowerList(PageInfo pageInfo, Map<String, Object> param) {
	    param.put("limit", String.valueOf(pageInfo.getListLimit())); // 정수를 문자열로 변환하여 추가
	    param.put("offset", String.valueOf(pageInfo.getStartList() - 1)); // 정수를 문자열로 변환하여 추가
	    return mapper.selectFlowerList(param);
	}
	
	public int selectFlowerCount(Map<String, Object> map) {
	    return mapper.selectFlowerCount(map);
	}
	
	public FlowerDtl selectByFlowerId(int id) {
		return mapper.selectByFlowerId(id);	
	}
	

}
