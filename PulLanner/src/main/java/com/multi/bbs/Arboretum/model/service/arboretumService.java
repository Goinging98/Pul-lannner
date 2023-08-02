package com.multi.bbs.Arboretum.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.bbs.Arboretum.model.mapper.arboretumMapper;
import com.multi.bbs.Arboretum.model.vo.TourVO;
import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.plantSearch.model.vo.GardenList;


@Service
public class arboretumService {
	
	@Autowired // 의존성 주입
	private arboretumMapper mapper; // 매퍼 인터페이스를 멤버 변수로 선언
	
	//-----------------------식물원 관련-------------------------------------
	public List<TourVO> selectArboretumList(PageInfo pageInfo, Map<String, String> searchMap) {
		searchMap.put("limit", "" + pageInfo.getListLimit());
		searchMap.put("offset", "" + (pageInfo.getStartList() - 1));
	    return mapper.selectArboretumList(searchMap);
	}
	
	public int selectArboretumCount(Map<String, String> searchMap) {
		 return mapper.selectArboretumCount(searchMap);
	}
	
	public TourVO selectByArboretumId(int id) {
		return mapper.selectByArboretumId(id);	
	}
	
	
	
	//-----------------------산/숲 관련-----------------------------------------
	public List<TourVO> selectMountList(PageInfo pageInfo, Map<String, String> searchMap) {
		searchMap.put("limit", "" + pageInfo.getListLimit());
		searchMap.put("offset", "" + (pageInfo.getStartList() - 1));
	    return mapper.selectMountList(searchMap);
	}
	
	public int selectMountCount(Map<String, String> searchMap) {
		 return mapper.selectMountCount(searchMap);
	}
	
	public TourVO selectMountId(int id) {
		return mapper.selectMountId(id);	
	}
	
	
	//-------------------공원(국립공원, 도립공원, 군립공원) 관련------------------------------
	public List<TourVO> selectParkList(PageInfo pageInfo, Map<String, String> searchMap) {
		searchMap.put("limit", "" + pageInfo.getListLimit());
		searchMap.put("offset", "" + (pageInfo.getStartList() - 1));
	    return mapper.selectParkList(searchMap);
	}
	
	public int selectParkCount(Map<String, String> searchMap) {
		 return mapper.selectParkCount(searchMap);
	}
	
	public TourVO selectParkId(int id) {
		return mapper.selectParkId(id);	
	}
	
	
	
	//-------------------휴양림 관련------------------------------
	public List<TourVO> selectForestLodgeList(PageInfo pageInfo, Map<String, String> searchMap) {
		searchMap.put("limit", "" + pageInfo.getListLimit());
		searchMap.put("offset", "" + (pageInfo.getStartList() - 1));
	    return mapper.selectForestLodgeList(searchMap);
	}
	
	public int selectForestLodgeCount(Map<String, String> searchMap) {
		 return mapper.selectForestLodgeCount(searchMap);
	}
	
	public TourVO selectForestLodgeId(int id) {
		return mapper.selectForestLodgeId(id);	
	}
	

	
	//-------------------랜덤으로 불러오기------------------------------
		public List<TourVO> selectRandomList(int count) {
	    Map<String, Object> map = new HashMap<>();
	    map.put("count", count);
	    return mapper.selectRandomList(map);
	}
}
