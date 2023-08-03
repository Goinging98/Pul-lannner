package com.multi.bbs.communityBoard.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.communityBoard.model.vo.BoardLike;
import com.multi.bbs.communityBoard.model.vo.ProudBoard;

@Mapper
public interface ProudBoardMapper {
	List<ProudBoard> selectProudBoardList(Map<String, String> map);
	int selectProudBoardCount(Map<String, String> map);
	ProudBoard selectProudBoardByNo(int no);
	int insertProudBoard(ProudBoard proudBoard);
	int updateProudBoard(ProudBoard proudBoard);
	int updateProudReadCount(ProudBoard proudBoard);
	int deleteProudBoard(int no);
	int selectHoneyBoardCount(Map<String, String> param);
	
	int insertProudBoardLike(BoardLike proudBoardLike);
	int deleteProudBoardLike(Map<String, String> param);
	int selectProudBoardLikeCount(Map<String, String> param);
	
}
