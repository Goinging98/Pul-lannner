package com.multi.bbs.plantSearch.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.plantSearch.model.vo.DryGardenDtl;
import com.multi.bbs.plantSearch.model.vo.FlowerDtl;
import com.multi.bbs.plantSearch.model.vo.GardenDtl;
import com.multi.bbs.plantSearch.model.vo.GardenList;
import com.multi.bbs.plantSearch.model.vo.PlantNameVO;


@Mapper
public interface plantSearchMapper {
	
	// --------------실내식물 관련----------------
	
	List<GardenList> selectGardentList(Map<String, String> map); 
	
	int selectGardenCount(Map<String, String> param);
	
	GardenDtl selectByContentDetailId(int id);
	
	GardenList selectByContentId(int id);
	
	
	
	
	// --------------꽃 관련----------------
	List<FlowerDtl> selectFlowerList(Map<String, String> map);
	
	int selectFlowerCount (Map<String, String> param);
	
	FlowerDtl selectByFlowerId(int id);
	
	
	
	
	// --------------다육이 관련----------------
	List<DryGardenDtl> selectDryGardenList(Map<String, String> map); 
	
	int selectDryGardenCount (Map<String, String> param);
	
	DryGardenDtl selectByDryGardenId(int id);
	
	
	
	// --------------오늘의 꽃(메인페이지) 관련----------------
	List<FlowerDtl> todayFlower(Map<String, Object> map);
	
	
	
	
	
	
	
	// plantshop 관련 코드
	List<PlantNameVO> selectPlantNoName();
	List<PlantNameVO> selectFlowerNoName();
	List<PlantNameVO> selectDryGardenNoName();
}
