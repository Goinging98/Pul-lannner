package com.multi.bbs.Arboretum.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.Arboretum.model.vo.TourVO;

@Mapper
public interface arboretumMapper {
	
	List<TourVO> selectArboretumList(Map<String, Object> map);

}
