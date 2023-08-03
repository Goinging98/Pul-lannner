package com.multi.bbs.scrap.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.bbs.scrap.model.mapper.ScrapWritingMapper;
import com.multi.bbs.scrap.model.vo.Scrap_writing;

@Service
public class ScrapWritingService {
	@Autowired
	ScrapWritingMapper mapper;
	
	public int insertWritingscrap(Scrap_writing scrapwriting) {
		return mapper.insertWritingscrap(scrapwriting);
	}
	
	public List<Scrap_writing> getWritingScrap(int mNO){
		return mapper.selectWritingScrap(mNO);
	}

	public List<Map<String, String>> getWritingScrapList(int mNO){
		return mapper.selectScrapWritingList(mNO);
	}
}
