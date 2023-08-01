package com.multi.bbs.member.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.communityBoard.model.vo.ProudBoard;

@Mapper
public interface MyproudMapper {
	List<ProudBoard> selectmyProudBoardList(String id);
	int selectmyProudBoardCount(String id);
	ProudBoard selectmyProudBoardByNo(int no);
}
