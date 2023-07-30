package com.multi.bbs.communityBoard.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.communityBoard.model.vo.HoneyTipReply;
import com.multi.bbs.communityBoard.model.vo.HoneyTipBoard;

@Mapper
public interface HoneyBoardMapper {
	List<HoneyTipBoard> selectHoneyBoardList(Map<String, String> map);
	int selectHoneyBoardCount(Map<String, String> map);
	HoneyTipBoard selectHoneyBoardByNo(int no);
	int insertHoneyBoard(HoneyTipBoard honeyBoard);
	int insertHoneyReply(HoneyTipReply reply);
	int updateHoneyBoard(HoneyTipBoard honeyBoard);
	int updateHoneyReadCount(HoneyTipBoard honeyBoard);
	int deleteHoneyBoard(int no);
	int deleteHoneyReply(int no);
}
