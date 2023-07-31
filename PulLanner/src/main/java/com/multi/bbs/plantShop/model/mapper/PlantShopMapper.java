package com.multi.bbs.plantShop.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.plantShop.model.vo.Plantshop;
import com.multi.bbs.plantShop.model.vo.PlantparcelReply;


@Mapper
public interface PlantShopMapper {
	
	/**
	 * @param map (key=id, title, content, limit(필수), offset(필수))
	 * @return
	 */
	List<Plantshop> selectPlantshopList(Map<String, Object> map);

	/**
	 * @param map (key=id, title, content)
	 * @return
	 */
	int selectPlantshopCount(Map<String, Object> map);

	Plantshop selectPlantshopByNo(int parcelno);

	int insertPlantshop(Plantshop plantshop);

	int insertPlantparcelReply(PlantparcelReply plantparcelreply);

	int updatePlantshop(Plantshop plantshop);

	/**
	 * @param map (key=readCount, bno)
	 * @return
	 */
//	int updateReadCount(Map<String, Object> map); 수정
	int updateParcelCount(Plantshop plantshop);

	int deletePlantshop(int parcelno);

	int deletePlantparcelReply(int parcelrno);
}
