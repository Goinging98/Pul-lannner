package com.multi.bbs.scrap.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.scrap.model.vo.Scrap_writing;

@Mapper
public interface ScrapWritingMapper {
	int insertWritingscrap(Scrap_writing scrapwriting);
	List<Scrap_writing> selectWritingScrap(int mNO);
	List<Map<String, String>> selectScrapWritingList(int mNO);
}
