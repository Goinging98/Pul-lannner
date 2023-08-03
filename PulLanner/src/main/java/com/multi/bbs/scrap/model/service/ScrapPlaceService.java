package com.multi.bbs.scrap.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.bbs.scrap.model.mapper.ScrapPlaceMapper;
import com.multi.bbs.scrap.model.vo.Scrap_place;

@Service
public class ScrapPlaceService {
	@Autowired
	ScrapPlaceMapper mapper;
	
	public int insertplacescrap(Scrap_place scrapplace) {
		return mapper.insertplacescrap(scrapplace);
	}
	
	public List<Scrap_place> getPlaceScrap(int mNO){
		return mapper.selectPlaceScrap(mNO);
	}

	public List<Map<String, String>> getPlaceScrapList(int mNO){
		return mapper.selectScrapPlaceList(mNO);
	}
}
