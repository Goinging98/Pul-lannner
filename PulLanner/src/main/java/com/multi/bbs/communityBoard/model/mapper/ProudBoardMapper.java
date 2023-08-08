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
	
//	int insertProudBoardLike(Map<String, Object> map);
//	int deleteProudBoardLike(Map<String, Object> param);
	int selectProudBoardLikeCount(Map<String, Object> param);
//	int selectProudBoardLikeMemberCount(Map<String, Object> param);
	List<ProudBoard> selectRandomList(Map<String, Object> Map);
	List<ProudBoard> selectProudBoardLikeList(Map<String, String> param);
	int likeBoard(Map<String, String> map);
	int unLikeBoard(Map<String, String> map);
	
}
