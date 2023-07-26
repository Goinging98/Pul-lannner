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
import com.multi.bbs.communityBoard.model.mapper.ProudBoardMapper;
import com.multi.bbs.communityBoard.model.vo.ProudBoard;

@Service
public class ProudBoardService {
	@Autowired
	private ProudBoardMapper mapper;

	
	public int getPBoardCount(Map<String, String> param) {
		return mapper.selectPBoardCount(param);
	}


	public List<ProudBoard> getPBoardList(PageInfo pageInfo, Map<String, String> param) {
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectPBoardList(param);
	}

	@Transactional(rollbackFor = Exception.class)
	public ProudBoard findByNo(int pBoardNo) {
		ProudBoard pBoard = mapper.selectPBoardByNo(pBoardNo);
		pBoard.setReadCount(pBoard.getReadCount() + 1);
		mapper.updateReadCount(pBoard);
		return pBoard;
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

	@Transactional(rollbackFor = Exception.class)
	public int savePBoard(ProudBoard pBoard) {
		int result = 0;
		if(pBoard.getPNo() == 0) {
			result = mapper.insertPBoard(pBoard);
		} else {
			result = mapper.updatePBoard(pBoard);
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
	public int deleteBoard(int no, String savePath) {
		ProudBoard board = mapper.selectPBoardByNo(no);
		deleteFile(savePath + "\\" + board.getRenamedFileName());
		return mapper.deletePBoard(no);
	}



}
