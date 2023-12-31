package com.multi.bbs.Controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@Autowired
	private ResourceLoader resourceLoader; // 파일 다운로드 기능시 활용하는 loader
	
	final static private String savePath = "/Users/kimjoohwan/Desktop/Dev/";	
	
	@GetMapping("/PlantProud")
	public String list(@SessionAttribute(name = "loginMember", required = false) Member loginMember, 
			Model model, @RequestParam Map<String, String> paramMap) {
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
		
		if(loginMember != null) {
			searchMap.put("mNo", ""+loginMember.getMNo());
		}
		
		int proudBoardCount = service.getProudBoardCount(searchMap);
		int honeyBoardCount = service.getHoneyBoardCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 10, proudBoardCount, 5); // 게시글이 보여지는 갯수 = 10
		List<ProudBoard> list = service.getProudBoardList(pageInfo, searchMap);
		List<ProudBoard> likeList = service.getProudBoardLikeList(paramMap);
		System.out.println("list : " + list);
		
		model.addAttribute("list", list);
		model.addAttribute("param", paramMap);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("proudBoardCount", proudBoardCount);
		model.addAttribute("honeyBoardCount", honeyBoardCount);
		model.addAttribute("likeList", likeList);
		
		return "/4.1_plant_proud";
	}
	
	@RequestMapping("/view")
	public String view(Model model, @RequestParam("no") int no,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember
			) {
		int mNo = 0;
		ProudBoard proudBoard = service.findByNo(no, mNo);
		if(proudBoard == null) {
			return "redirect:error";
		}
		
		model.addAttribute("proudBoard", proudBoard);
		return "/PlantProud";
	}
	
	@GetMapping("/error")
	public String error() {
		return "/common/error";
	}
	
	@GetMapping("/wirte")
	public String writeView() {
		return "/PlantProud";
	}
	
	// 게시글 처리 + 파일 업로드
	@PostMapping("/PlantProud")
	public String writeProudBoard(Model model, HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute ProudBoard proudBoard,
			@RequestParam(value= "upfile", required=false) MultipartFile upfile
			) {
		log.info("게시글 작성 요청");
		
		proudBoard.setMNo(loginMember.getMNo());
		
		// 파일 저장 로직
		if(upfile != null && upfile.isEmpty() == false) {
			String renameFileName = service.saveFile(upfile, savePath); 
			
			if(renameFileName != null) {
				proudBoard.setOriginalFileName(upfile.getOriginalFilename());
				proudBoard.setRenamedFileName(renameFileName);
			}
		}
		
		log.debug("proudBoard : " + proudBoard);
		int result = service.saveProudBoard(proudBoard);

		if(result > 0) {
			model.addAttribute("msg", "게시글이 등록 되었습니다.");
			model.addAttribute("location", "/PlantProud");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/PlantProud");
		}
		
		return "common/msg";
	}
	
	@RequestMapping("/delete")
	public String deleteProudBoard(Model model,  HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int proudBoardNo
			) {
		log.info("게시글 삭제 요청 proudBoardNo : " + proudBoardNo);
		int result = service.deleteProudBoard(proudBoardNo, savePath);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글 삭제가 정상적으로 완료되었습니다.");
		}else {
			model.addAttribute("msg", "게시글 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/PlantProud");
		return "common/msg";
	}
	
	// 첨부이미지(스프링부트)
		@GetMapping("/proud/file/{fileName}") // 이미지 출력 경로 ex) 3.3_plant-parcel-out.jsp  42번째줄
		@ResponseBody
		public Resource downloadImage(@PathVariable("fileName") String fileName, Model model) throws IOException {
			return new UrlResource("file:" + savePath + fileName);
		}
		
		@RequestMapping("/proud/fileDown")
		public ResponseEntity<Resource> fileDown(@RequestParam("oriname") String oriname,
				@RequestParam("rename") String rename, @RequestHeader(name = "user-agent") String userAgent) {
			try {
				Resource resource = new UrlResource("file:" + savePath + rename + "");
				String downName = null;

				// 인터넷 익스플로러 인 경우
				boolean isMSIE = userAgent.indexOf("MSIE") != -1 || userAgent.indexOf("Trident") != -1;

				if (isMSIE) { // 익스플로러 처리하는 방법
					downName = URLEncoder.encode(oriname, "UTF-8").replaceAll("\\+", "%20");
				} else {
					downName = new String(oriname.getBytes("UTF-8"), "ISO-8859-1"); // 크롬
				}
				return ResponseEntity.ok()
						.header(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=\"" + downName + "\"")
						.header(HttpHeaders.CONTENT_LENGTH, String.valueOf(resource.contentLength()))
						.header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_OCTET_STREAM.toString()).body(resource);
			} catch (Exception e) {
				e.printStackTrace();
			}

			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build(); // 실패했을 경우
		}
		
		
	// 좋아요 기능 부분
		@GetMapping("/PlantProud/like") 
		public ResponseEntity<Integer> boardLike(
				@SessionAttribute(name = "loginMember", required = false) Member loginMember,
				int bNo, int isLike)
		{
			int result = 0;
			if(isLike == 1) {
				result = service.likeBoard(loginMember.getMNo(), bNo);	
			}else {
				result = service.unLikeBoard(loginMember.getMNo(), bNo);
			}
			
			if(result > 0) {
				return ResponseEntity.status(HttpStatus.OK).body(isLike);
			}else {
				return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
			}
			
			
		
	
}
}
	
