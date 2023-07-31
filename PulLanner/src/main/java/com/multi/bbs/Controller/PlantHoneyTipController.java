package com.multi.bbs.Controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
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
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.communityBoard.model.service.HoneyBoardService;
import com.multi.bbs.communityBoard.model.vo.HoneyTipBoard;
import com.multi.bbs.communityBoard.model.vo.HoneyTipReply;
import com.multi.bbs.member.model.vo.Member;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/HoneyTip")
@Controller
public class PlantHoneyTipController {
	
	@Autowired
	private HoneyBoardService service;
	
	final static private String savePath = "/Users/kimjoohwan/Desktop/dev";
	
	@GetMapping("/list")
	public String HoneyTip(Model model, @RequestParam Map<String, String> paramMap) {
		int page = 1;

		// 탐색할 맵을 선언
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
		
		int honeyBoardCount = service.getHoneyBoardCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 10, honeyBoardCount, 5);
		List<HoneyTipBoard> list = service.getHoneyBoardList(pageInfo, searchMap);
		
		model.addAttribute("list", list);
		model.addAttribute("param", paramMap);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("honeyBoardCount", honeyBoardCount);
		
		return "4.2.0_honeytip_list";
	}
	
	@RequestMapping("/view")
	public String honeyTipView(Model model, @RequestParam("no") int no) {
		HoneyTipBoard honeyBoard = service.findByNo(no);
		if(honeyBoard == null) {
			return "redirect:error";
		}
		
		model.addAttribute("honeyBoard", honeyBoard);
		model.addAttribute("honeyReplyList", honeyBoard.getHoneyReplyList());
		return "4.2.1_honeytip_detail";
	}
	
	
	@GetMapping("/error")
	public String error() {
		return "common/error";
	}
	
	@GetMapping("/write")
	public String writeView() {
		return "4.2.2_honeytip_writing";
	}
	
	@PostMapping("/write")
	public String writeHoneyBoard(Model model, HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute HoneyTipBoard honeyBoard,
			@RequestParam("upfile") MultipartFile upfile
			) {
		log.info("게시글 작성 요청");
		
		honeyBoard.setMNo(loginMember.getMNo());
		
		// 파일 저장 로직
		if(upfile != null && upfile.isEmpty() == false) {
			String renameFileName = service.saveFile(upfile, savePath); 
			
			if(renameFileName != null) {
				honeyBoard.setOriginalFileName(upfile.getOriginalFilename());
				honeyBoard.setRenamedFileName(renameFileName);
			}
		}
		
		log.debug("honeyBoard : " + honeyBoard);
		int result = service.saveHoneyBoard(honeyBoard);

		if(result > 0) {
			model.addAttribute("msg", "게시글이 등록 되었습니다.");
			model.addAttribute("location", "/HoneyTip");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/HoneyTip");
		}
		
		return "common/msg";
	}
	
	
	@RequestMapping("/reply")
	public String writeHoneyReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute HoneyTipReply honeyReply
			) {
		honeyReply.setMNo(loginMember.getMNo());
		log.info("리플 작성 요청 honeyReply : " + honeyReply);
		
		int result = service.saveHoneyReply(honeyReply);
		
		if(result > 0) {
			model.addAttribute("msg", "리플이 등록되었습니다.");
		}else {
			model.addAttribute("msg", "리플 등록에 실패하였습니다.");
		}
		model.addAttribute("location", "/HoneyTip/view?no="+honeyReply.getBNo());
		return "common/msg";
	}
	
	@RequestMapping("/delete")
	public String deleteHoneyBoard(Model model,  HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int honeyBoardNo
			) {
		log.info("게시글 삭제 요청 honeyBoardNo : " + honeyBoardNo);
		int result = service.deleteHoneyBoard(honeyBoardNo, savePath);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글 삭제가 정상적으로 완료되었습니다.");
		}else {
			model.addAttribute("msg", "게시글 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/HoneyTip/list");
		return "common/msg";
	}
	
	@RequestMapping("/replyDel")
	public String deleteHoneyReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int honeyReplyNo, int honeyBoardNo
			){
		log.info("리플 삭제 요청");
		int result = service.deleteHoneyReply(honeyReplyNo);
		
		if(result > 0) {
			model.addAttribute("msg", "리플 삭제가 정상적으로 완료되었습니다.");
		}else {
			model.addAttribute("msg", "리플 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/HoneyTip/view?no=" + honeyBoardNo);
		return "/common/msg";
	}
	
	// http://localhost/mvc/board/update?no=27
	@GetMapping("/update")
	public String updateHoneyTipView(Model model,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestParam("no") int no
			) {
		HoneyTipBoard honeyBoard = service.findByNo(no);
		model.addAttribute("honeyBoard",honeyBoard);
		return "HoneyTip/update";
	}
	

	@PostMapping("/update")
	public String updateHoneyTipBoard(Model model, HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute HoneyTipBoard honeyBoard,
			@RequestParam("reloadFile") MultipartFile reloadFile
			) {
		log.info("게시글 수정 요청");
		
		honeyBoard.setMNo(loginMember.getMNo());
		
		// 파일 저장 로직
		if(reloadFile != null && reloadFile.isEmpty() == false) {
			// 기존 파일이 있는 경우 삭제
			if(honeyBoard.getRenamedFileName() != null) {
				service.deleteFile(savePath + "/" + honeyBoard.getRenamedFileName());
			}
			
			String renameFileName = service.saveFile(reloadFile, savePath); // 실제 파일 저장하는 로직
			
			if(renameFileName != null) {
				honeyBoard.setOriginalFileName(reloadFile.getOriginalFilename());
				honeyBoard.setRenamedFileName(renameFileName);
			}
		}
		
		log.debug("board : " + honeyBoard);
		int result = service.saveHoneyBoard(honeyBoard);

		if(result > 0) {
			model.addAttribute("msg", "게시글이 수정 되었습니다.");
			model.addAttribute("location", "/HoneyTip");
		}else {
			model.addAttribute("msg", "게시글 수정에 실패하였습니다.");
			model.addAttribute("location", "/HoneyTip");
		}
		
		return "common/msg";
	}
	
	@GetMapping("/file/{fileName}")
	@ResponseBody
	public Resource downloadImage(@PathVariable("fileName") String fileName, Model model) throws IOException {
		return new UrlResource("file:" + savePath + fileName);
	}
	
	@RequestMapping("/fileDown")
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


}

