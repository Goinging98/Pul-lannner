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
import com.multi.bbs.communityBoard.model.vo.BoardLike;
import com.multi.bbs.communityBoard.model.vo.ProudBoard;

@Service
public class ProudBoardService {
	@Autowired
	private ProudBoardMapper mapper;
	
	@Transactional(rollbackFor = Exception.class)
	public int saveProudBoard(ProudBoard proudBoard) {
		int result = 0;
		if(proudBoard.getBNo() == 0) {
			result = mapper.insertProudBoard(proudBoard);
		}else {
			result = mapper.updateProudBoard(proudBoard);
		}
		return result;
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
	
	public int getProudBoardCount(Map<String, String> param) {
		return mapper.selectProudBoardCount(param);
	}
	
	public List<ProudBoard> getProudBoardList(PageInfo pageInfo, Map<String, String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectProudBoardList(param);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public ProudBoard findByNo(int proudBoardNo) {
		ProudBoard proudBoard = mapper.selectProudBoardByNo(proudBoardNo); 
		proudBoard.setReadCount(proudBoard.getReadCount() + 1);  
		mapper.updateProudReadCount(proudBoard);
		return proudBoard; 
	}
	
	public void deleteFile(String filePath) {
		File file = new File(filePath);
		if(file.exists()) {
			file.delete();
		}
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int deleteProudBoard(int no, String rootPath) {
		ProudBoard proudBoard = mapper.selectProudBoardByNo(no);
		deleteFile(rootPath + "\\" + proudBoard.getRenamedFileName());
		return mapper.deleteProudBoard(no);
	}


	public int getHoneyBoardCount(Map<String, String> param) {
		return mapper.selectHoneyBoardCount(param);
	}
	
	@Transactional()
	public int insertProudBoardLike(BoardLike proudBoardLike) {
		return mapper.insertProudBoardLike(proudBoardLike);
	}
	
	public int getProudBoardLikeCount(Map<String, String> param) {
		return mapper.selectProudBoardLikeCount(param);
	}
	
	public int removeProudBoardLike(Map<String, String> param) {
		return mapper.deleteProudBoardLike(param);
	}
	
}




