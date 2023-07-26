package com.multi.bbs.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.communityBoard.model.service.ProudBoardService;
import com.multi.bbs.communityBoard.model.vo.ProudBoard;
import com.multi.bbs.member.model.vo.Member;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PlantProudController {
	
	@Autowired
	private ProudBoardService service;
	
	
	final static private String savePath = "/Users/kimjoohwan/Desktop/dev";	
	
	@GetMapping("/PlantProud")
	public String list(Model model, @RequestParam Map<String, String> paramMap) {
		int page = 1;

		Map<String, String> searchMap = new HashMap<String, String>();
		try {
			String searchValue = paramMap.get("searchValue");
			if(searchValue != null && searchValue.length() > 0) {
				String searchType = paramMap.get("searchType");
				searchMap.put(searchType, searchValue);
			}else {
				paramMap.put("searchType", "all");
			}
			page = Integer.parseInt(paramMap.get("page"));
		} catch (Exception e) {}
		
		int pBoardCount = service.getPBoardCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 10, pBoardCount, 5); // 게시글이 보여지는 갯수 = 10
		List<ProudBoard> list = service.getPBoardList(pageInfo, searchMap);
//		System.out.println("list : " + list);
		
		model.addAttribute("list", list);
		model.addAttribute("param", paramMap);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("pBoardCount", pBoardCount);
		
		return "/4.1_plant_proud";
	}
	
	@GetMapping("/error")
	public String error() {
		return "/common/error";
	}
	
//	@GetMapping("/PlantProud")
//	public String writeView() {
//		return "/4.1_plant_proud";
//	}
	
	// 게시글 처리 + 파일 업로드
	@PostMapping("/PlantProud")
	public String writeBoard(Model model, HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute ProudBoard pBoard,
			@RequestParam("upfile") MultipartFile upfile
			) {
		log.info("게시글 작성 요청");
		
		pBoard.setMNo(loginMember.getMNo());
		
		// 파일 저장 로직
		if(upfile != null && upfile.isEmpty() == false) {
			String renameFileName = service.saveFile(upfile, savePath); 
			
			if(renameFileName != null) {
				pBoard.setOriginalFileName(upfile.getOriginalFilename());
				pBoard.setRenamedFileName(renameFileName);
			}
		}
		
		log.debug("board : " + pBoard);
		int result = service.savePBoard(pBoard);

		if(result > 0) {
			model.addAttribute("msg", "게시글이 등록 되었습니다.");
			model.addAttribute("location", "/board/list");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/board/list");
		}
		
		return "common/msg";
	}
	
}
	
