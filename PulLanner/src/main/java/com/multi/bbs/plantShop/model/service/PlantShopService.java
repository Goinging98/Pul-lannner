package com.multi.bbs.plantShop.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.multi.bbs.plantShop.model.mapper.PlantShopMapper;
import com.multi.bbs.plantShop.model.vo.Plantshop;
import com.multi.bbs.plantShop.model.vo.PlantparcelReply;
import com.multi.bbs.common.util.PageInfo;

@Service
public class PlantShopService {
	
	// 1. DAO 사용시 선언
//	@Autowired
//	private BoardDao dao;
//	@Autowired
//	private SqlSessionTemplate sqlSession;
	
	// 2. Mapper 사용시 선언
	@Autowired
	private PlantShopMapper mapper;

	
	public int getPlantShopCount(Map<String, Object> param) {
		return mapper.selectPlantshopCount(param);
	}


	public List<Plantshop> getPlantShopList(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectPlantshopList(param);
	}


	public Plantshop findByNo(int parcelno) {
		Plantshop plantshop = mapper.selectPlantshopByNo(parcelno);
		plantshop.setParcelcount(plantshop.getParcelcount() + 1);
		mapper.updateParcelCount(plantshop);
		return plantshop;
	}

	private static int count = 0;
	public String saveFile(MultipartFile upfile, String savePath) {
		File folder = new File(savePath);
		
		// 폴더가 없으면 경로채 폴더 만들어주는 코드
		if(folder.exists() == false) {
			folder.mkdirs();
		}
		System.out.println(savePath);
		
		// 파일 이름을 날짜시간 + 랜덤하게 바꾸는 코드, text.txt -> 20230522_14230230202.txt
		String parcelimg = upfile.getOriginalFilename();
		String parcelimgedt = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmssSSS"));
		parcelimgedt += (count++);									
		parcelimgedt += parcelimg.substring(parcelimg.lastIndexOf("."));
		String renamedPath = savePath + "/" + parcelimgedt;
		
		try {
			// 실제 파일이름을 변경하여 저장하는 코드
			upfile.transferTo(new File(renamedPath));
		} catch (Exception e) {
			return null;
		}
		
		return parcelimgedt;
	}

	@Transactional(rollbackFor = Exception.class)
	public int savePlantshop(Plantshop plantshop) {
		int result = 0;
		if(plantshop.getParcelno() == 0) {
			result = mapper.insertPlantshop(plantshop);
		} else {
			result = mapper.updatePlantshop(plantshop);
		}
		return result;
	}

	public void deleteFile(String path) {
		File file = new File(path);
		if(file.exists()) {
			file.delete();
		}
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int deletePlantshop(int parcelno, String savePath) {
		Plantshop plantshop = mapper.selectPlantshopByNo(parcelno);
		deleteFile(savePath + "\\" + plantshop.getParcelimgedt());
		return mapper.deletePlantshop(parcelno);
	}

	@Transactional(rollbackFor = Exception.class)
	public int savePlantparcelReply(PlantparcelReply plantparcelreply) {
		return mapper.insertPlantparcelReply(plantparcelreply);
	}


	@Transactional(rollbackFor = Exception.class)
	public int deletePlantparcelReply(int parcelrno) {
		return mapper.deletePlantparcelReply(parcelrno);
	}

}
