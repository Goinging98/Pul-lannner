package com.multi.bbs.manage.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.multi.bbs.manage.model.mapper.ManageBoardMapper;
import com.multi.bbs.manage.model.vo.Managelist;


@Service
public class ManageBoardService {
	
	@Autowired // 의존성 주입
	private ManageBoardMapper mapper;
	
	@Transactional(rollbackFor = Exception.class)
	public int saveManagelist(Managelist Managelist) {
		int result = 0;
		if(Managelist.getBno() == 0) {
			result = mapper.insertMANAGELIST(Managelist);
		}else {
			result = mapper.updateMANAGELIST(Managelist);
		}
		return result;
	}
	
	private static int count = 0;

	public String saveFile(MultipartFile upFile, String savePath) {
		File folder = new File(savePath);
		
		// 폴더 없으면 만드는 코드
		if(folder.exists() == false) {
			folder.mkdir();
		}
		System.out.println("savePath : " + savePath);
		
		// 파일이름을 랜덤하게 바꾸는 코드, test.txt -> 20221213_1728291212.txt
		String originalimg = upFile.getOriginalFilename();
		String renamedimg = 
					LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmssSSS"));
		renamedimg += (count++);

		renamedimg += originalimg.substring(originalimg.lastIndexOf("."));
		String reNamePath = savePath + "/" + renamedimg;
		
		try {
			// 실제 파일이 저장되는 코드
			upFile.transferTo(new File(reNamePath));
		} catch (Exception e) {
			return null;
		}
		return renamedimg;
	}
	
	
	public int selectMANAGELISTCount(int mno) {
		return mapper.selectMANAGELISTCount(mno);
	}
	
	public List<Managelist> selectMANAGELISTList(int mno) {
		return mapper.selectMANAGELISTList(mno);
	}
	
	public Managelist selectMANAGELIST(int bno) {
		return mapper.selectMANAGELIST(bno);
	}
	
	public void deleteFile(String filePath) {
		File file = new File(filePath);
		if(file.exists()) {
			file.delete();
		}
	}
		
}