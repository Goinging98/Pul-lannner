package com.multi.bbs.plantSearch.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.plantSearch.model.vo.DryGardenDtl;
import com.multi.bbs.plantSearch.model.vo.FlowerDtl;
import com.multi.bbs.plantSearch.model.vo.GardenDtl;
import com.multi.bbs.plantSearch.model.vo.GardenList;


@Mapper
public interface plantSearchMapper {
	
	// --------------실내식물 관련----------------
	
	List<GardenList> selectGardentList(Map<String, Object> map); 
	
	int selectGardenCount(Map<String, Object> map);
	
	GardenDtl selectByContentDetailId(int id);
	
	GardenList selectByContentId(int id);
	
	
	
	
	// --------------꽃 관련----------------
	List<FlowerDtl> selectFlowerList(Map<String, Object> map); // 추가된 메서드
	
	int selectFlowerCount (Map<String, Object> map);
	
	FlowerDtl selectByFlowerId(int id);
	
	
	
	
	// --------------다육이 관련----------------
	List<DryGardenDtl> selectDryGardenList(Map<String, Object> map); // 추가된 메서드
	
	int selectDryGardenCount (Map<String, Object> map);
	
	DryGardenDtl selectByDryGardenId(int id);
	


	
}
