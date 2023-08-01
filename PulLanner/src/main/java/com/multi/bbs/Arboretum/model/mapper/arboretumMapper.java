package com.multi.bbs.Arboretum.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.Arboretum.model.vo.TourVO;
import com.multi.bbs.plantSearch.model.vo.GardenDtl;

@Mapper
public interface arboretumMapper {
	
	//----------------식물원관련------------------------
	
	List<TourVO> selectArboretumList(Map<String, String> searchMap);
	
	int selectArboretumCount(Map<String, String> param);
	
	TourVO selectByArboretumId(int id);
	
	
	
	
	//--------------------
	
}
