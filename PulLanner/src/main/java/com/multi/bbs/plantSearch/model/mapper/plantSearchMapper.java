package com.multi.bbs.plantSearch.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.plantSearch.model.vo.GardenDtl;
import com.multi.bbs.plantSearch.model.vo.GardenList;


@Mapper
public interface plantSearchMapper {
	
	List<GardenList> selectGardentList(Map<String, Object> map); // 추가된 메서드
	
	int selectGardenCount(Map<String, Object> map);
	
	GardenDtl selectByContentDetailId(int id);
	
	GardenList selectByContentId(int id);
	

	
	
	

	
}
