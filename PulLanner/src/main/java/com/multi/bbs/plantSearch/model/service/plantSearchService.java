package com.multi.bbs.plantSearch.model.service;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.plantSearch.model.mapper.plantSearchMapper;
import com.multi.bbs.plantSearch.model.vo.DryGardenDtl;
import com.multi.bbs.plantSearch.model.vo.DryGardenList;
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
	public List<GardenList> selectGardentList(PageInfo pageInfo, Map<String, String> searchMap) {
		searchMap.put("limit", "" + pageInfo.getListLimit());
		searchMap.put("offset", "" + (pageInfo.getStartList() - 1));
	    // 매퍼 인터페이스의 selectGardentList 메서드 호출
	    return mapper.selectGardentList(searchMap);
	}

	public int selectGardenCount(Map<String, String> searchMap) {
	    // 매퍼 인터페이스의 selectGardenCount 메서드 호출
	    return mapper.selectGardenCount(searchMap);
	}

	public GardenList selectByContentId(int id) {
		return mapper.selectByContentId(id);	
	}
	
	public GardenDtl selectByContentDetailId(int id) {
		return mapper.selectByContentDetailId(id);	
	}
	
	
	
	
	
	// --------------꽃 관련----------------
	public List<FlowerDtl> selectFlowerList(PageInfo pageInfo, Map<String, String> param) {
	    param.put("limit", "" + pageInfo.getListLimit());
	    param.put("offset", "" + (pageInfo.getStartList() - 1));
	    return mapper.selectFlowerList(param);
	}
	
	public int selectFlowerCount(Map<String, String> param) {
	    return mapper.selectFlowerCount(param);
	}
	
	public FlowerDtl selectByFlowerId(int id) {
		return mapper.selectByFlowerId(id);	
	}
	
	
	
	
	
	// --------------다육이 관련----------------
	public List<DryGardenDtl> selectDryGardenList(PageInfo pageInfo, Map<String, String> param) {
	    param.put("limit", "" + pageInfo.getListLimit());
	    param.put("offset", "" + (pageInfo.getStartList() - 1));
	    return mapper.selectDryGardenList(param);
	}
	
	public int selectDryGardenCount(Map<String, String> param) {
	    return mapper.selectDryGardenCount(param);
	}
	
    public DryGardenDtl selectByDryGardenId(int id) {
        return mapper.selectByDryGardenId(id);
    }

}
