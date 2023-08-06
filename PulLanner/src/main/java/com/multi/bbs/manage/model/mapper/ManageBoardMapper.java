package com.multi.bbs.manage.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.manage.model.vo.Managelist;
import com.multi.bbs.manage.model.vo.Plantmanage;

@Mapper
public interface ManageBoardMapper {
	int selectMANAGELISTCount(int mno);
	List<Managelist> selectMANAGELISTList(int mno);
	Managelist selectMANAGELIST(int bno);
	int insertMANAGELIST(Managelist managelist);
	int updateMANAGELIST(Managelist managelist);
	
	int insertPLANTMANAGE (Plantmanage plantmanage);;
	List<Plantmanage> selectPlantmanageList(Map<String, String> map);
}
