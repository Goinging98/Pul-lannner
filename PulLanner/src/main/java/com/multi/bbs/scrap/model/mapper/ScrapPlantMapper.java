package com.multi.bbs.scrap.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.scrap.model.vo.Scrap_plant;

@Mapper
public interface ScrapPlantMapper {
	int insertplantscrap(Scrap_plant scrapplant);
	List<Scrap_plant> selectPlantScrap(int mNO);
	List<Map<String, String>> selectScrapPlantList(int mNO);
//	int scrapCancel(int dataNO, int mNO);
//	int scrapCount(int dataNO, int type);
//	int scrapCheck(int dataNo, int type, int mNO);
//	Scrap selectscrap(int mNO);
}
