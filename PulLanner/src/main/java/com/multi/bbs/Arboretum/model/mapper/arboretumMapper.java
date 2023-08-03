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
	

	
	//----------------산/숲 관련-------------------------
	
	List<TourVO> selectMountList(Map<String, String> searchMap);
	
	int selectMountCount(Map<String, String> param);
	
	TourVO selectMountId(int id);
	
	
	
	//----------------휴양림 관련----------------------------
	
	List<TourVO> selectParkList(Map<String, String> searchMap);
	
	int selectParkCount(Map<String, String> param);
	
	TourVO selectParkId(int id);
	
	
	
	//----------------휴양림 관련----------------------------
	
	List<TourVO> selectForestLodgeList(Map<String, String> searchMap);
	
	int selectForestLodgeCount(Map<String, String> param);
	
	TourVO selectForestLodgeId(int id);
	
	
	
	
	//----------------랜덤으로 불러오기----------------------------
	List<TourVO> selectRandomList(Map<String, Object> map);
	List<TourVO> selectRandomList3(Map<String, Object> map);
}
