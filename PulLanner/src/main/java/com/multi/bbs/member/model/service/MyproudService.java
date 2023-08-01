package com.multi.bbs.member.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.member.model.mapper.MyproudMapper;
import com.multi.bbs.communityBoard.model.vo.ProudBoard;

@Service
public class MyproudService {
	@Autowired
	private MyproudMapper mapper;
	
	
	public int getmyProudBoardCount(String id) {
		return mapper.selectmyProudBoardCount(id);
	}
	
	public List<ProudBoard> getmyProudBoardList(String id){
		return mapper.selectmyProudBoardList(id);
	}
	
}




