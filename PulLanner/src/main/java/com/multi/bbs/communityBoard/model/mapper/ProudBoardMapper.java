package com.multi.bbs.communityBoard.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.communityBoard.model.vo.ProudBoard;

@Mapper
public interface ProudBoardMapper {
	List<ProudBoard> selectPBoardList(Map<String, String> map);
	int selectPBoardCount(Map<String, String> map);
	ProudBoard selectPBoardByNo(int no);
	int insertPBoard(ProudBoard pBoard);
	int updatePBoard(ProudBoard pBoard);
	int updateReadCount(ProudBoard board);
	int deletePBoard(int no);

}
