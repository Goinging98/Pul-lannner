package com.multi.bbs.communityBoard.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.communityBoard.model.mapper.HoneyBoardMapper;
import com.multi.bbs.communityBoard.model.vo.HoneyTipBoard;
import com.multi.bbs.communityBoard.model.vo.HoneyTipReply;

@Service
public class HoneyBoardService {
	@Autowired
	private HoneyBoardMapper mapper;
	
	@Transactional(rollbackFor = Exception.class)
	public int saveHoneyBoard(HoneyTipBoard honeyBoard) {
		int result = 0;
		if(honeyBoard.getBNo() == 0) {
			result = mapper.insertHoneyBoard(honeyBoard);
		}else {
			result = mapper.updateHoneyBoard(honeyBoard);
		}
		return result;
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int saveHoneyReply(HoneyTipReply honeyReply) {
		return mapper.insertHoneyReply(honeyReply);
	}
	
	
	public String saveFile(MultipartFile upFile, String savePath) {
		File folder = new File(savePath);
		
		// 폴더 없으면 만드는 코드
		if(folder.exists() == false) {
			folder.mkdir();
		}
		System.out.println("savePath : " + savePath);
		
		// 파일이름을 랜덤하게 바꾸는 코드, test.txt -> 20221213_1728291212.txt
		String originalFileName = upFile.getOriginalFilename();
		String reNameFileName = 
					LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmssSSS"));
		reNameFileName += originalFileName.substring(originalFileName.lastIndexOf("."));
		String reNamePath = savePath + "/" + reNameFileName;
		
		try {
			// 실제 파일이 저장되는 코드
			upFile.transferTo(new File(reNamePath));
		} catch (Exception e) {
			return null;
		}
		return reNameFileName;
	}
	
	public int getHoneyBoardCount(Map<String, String> param) {
		return mapper.selectHoneyBoardCount(param);
	}
	
	public List<HoneyTipBoard> getHoneyBoardList(PageInfo pageInfo, Map<String, String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectHoneyBoardList(param);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public HoneyTipBoard findByNo(int honeyBoardNo) {
		HoneyTipBoard honeyBoard = mapper.selectHoneyBoardByNo(honeyBoardNo); 
		honeyBoard.setReadCount(honeyBoard.getReadCount() + 1);  
		mapper.updateHoneyReadCount(honeyBoard);
		return honeyBoard; 
	}
	
	public void deleteFile(String filePath) {
		File file = new File(filePath);
		if(file.exists()) {
			file.delete();
		}
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int deleteHoneyBoard(int no, String rootPath) {
		HoneyTipBoard honeyBoard = mapper.selectHoneyBoardByNo(no);
		deleteFile(rootPath + "\\" + honeyBoard.getRenamedFileName());
		return mapper.deleteHoneyBoard(no);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int deleteHoneyReply(int no) {
		return mapper.deleteHoneyReply(no);
	}

	public int getProudBoardCount(Map<String, String> param) {
		return mapper.selectProudBoardCount(param);
	}
	
}





