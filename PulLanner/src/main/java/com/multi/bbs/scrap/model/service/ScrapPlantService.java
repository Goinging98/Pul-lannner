package com.multi.bbs.scrap.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.bbs.scrap.model.mapper.ScrapPlantMapper;
import com.multi.bbs.scrap.model.vo.Scrap_plant;

@Service
public class ScrapPlantService {
	@Autowired
	ScrapPlantMapper mapper;
	
	public int insertplantscrap(Scrap_plant scrapplant) {
		return mapper.insertplantscrap(scrapplant);
	}
	
	public List<Scrap_plant> getPlantScrap(int mNO){
		return mapper.selectPlantScrap(mNO);
	}

	public List<Map<String, String>> getPlantScrapList(int mNO){
		return mapper.selectScrapPlantList(mNO);
	}
}
