package com.multi.bbs.scrap.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.scrap.model.vo.Scrap_place;

@Mapper
public interface ScrapPlaceMapper {
	int insertplacescrap(Scrap_place scrapplace);
	List<Scrap_place> selectPlaceScrap(int mNO);
	List<Map<String, String>> selectScrapPlaceList(int mNO);
}
