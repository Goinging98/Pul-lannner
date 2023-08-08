package com.multi.bbs.Controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Locale;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.bbs.member.model.vo.Member;
import com.multi.bbs.scrap.model.service.ScrapPlaceService;
import com.multi.bbs.scrap.model.service.ScrapPlantService;
import com.multi.bbs.scrap.model.service.ScrapWritingService;
import com.multi.bbs.scrap.model.vo.Scrap_place;
import com.multi.bbs.scrap.model.vo.Scrap_plant;
import com.multi.bbs.scrap.model.vo.Scrap_writing;

import jakarta.servlet.http.HttpSession;

@Controller
public class ScrapPlantController {
	@Autowired
	ScrapPlantService scrapPlantService;
	
	@Autowired
	ScrapPlaceService scrapPlaceService;
	
	@Autowired
	ScrapWritingService scrapWritingService;
	
	final static private String savePath = "/Users/kimjoohwan/Desktop/Dev/";

	// ------------------------------------------------------- 글 스크랩 
	@RequestMapping(value = "/scrapwriting")
	String scrapwriting(Model model, HttpSession session, int num){
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/login");
			return "common/msg";
		}
		
		int result = 0;		
		Scrap_writing scrapwriting = new Scrap_writing(member.getMNo(), num);
		result = scrapWritingService.insertWritingscrap(scrapwriting);
		
		if(result >0) {
			model.addAttribute("msg", "스크랩 되었습니다.");
			model.addAttribute("location", "/HoneyTip/list");
		} else {
			model.addAttribute("msg", "스크랩에 실패하였습니다.");
			model.addAttribute("location", "/HoneyTip/list");
		}
		return "common/msg";
		
	}

	@RequestMapping(value = "/mypage/stararticle", method = RequestMethod.GET)
	public String stararticle(Locale locale, Model model, HttpSession session) {
		System.out.println("star article page");
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/login");
			return "common/msg";
		}
		List<Map<String, String>> swlist = scrapWritingService.getWritingScrapList(member.getMNo());
		model.addAttribute("swlist", swlist);
		return "0.3.1_account-stararticle";
	}

	// ------------------------------------------------------- 식물 스크랩 
	@RequestMapping(value = "/scrapplant")
	String scrapplant(Model model, HttpSession session, int num){
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/login");
			return "common/msg";
		}
		
		int result = 0;		
		Scrap_plant scrapplant = new Scrap_plant(member.getMNo(), num);
		result = scrapPlantService.insertplantscrap(scrapplant);
		
		if(result >0) {
			model.addAttribute("msg", "스크랩 되었습니다.");
			model.addAttribute("location", "/PlantSearch");
		} else {
			model.addAttribute("msg", "스크랩에 실패하였습니다.");
			model.addAttribute("location", "/PlantSearch");
		}
		return "common/msg";
		
	}

	@RequestMapping(value = "/mypage/starplant", method = RequestMethod.GET)
	public String starplant(Locale locale, Model model, HttpSession session) {
		System.out.println("star plant page");
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/login");
			return "common/msg";
		}
		List<Map<String, String>> splist = scrapPlantService.getPlantScrapList(member.getMNo());
		model.addAttribute("splist", splist);
		return "0.3.2_account-starplant";
	}

	// ------------------------------------------------------- 장소 스크랩 
	@RequestMapping(value = "/scrapplace")
	String scrapplace(Model model, HttpSession session, int num){
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/login");
			return "common/msg";
		}
		
		int result = 0;		
		System.out.println(member.getMNo());
		Scrap_place scrapplace = new Scrap_place(member.getMNo(), num);
		System.out.println(scrapplace);
		result = scrapPlaceService.insertplacescrap(scrapplace);
		
		if(result >0) {
			model.addAttribute("msg", "스크랩 되었습니다.");
			model.addAttribute("location", "/arboretumList");
		} else {
			model.addAttribute("msg", "스크랩에 실패하였습니다.");
			model.addAttribute("location", "/arboretumList");
		}
		return "common/msg";
		
	}

	@RequestMapping(value = "/mypage/starplace", method = RequestMethod.GET)
	public String starplace(Locale locale, Model model, HttpSession session) {
		System.out.println("star place page");
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/login");
			return "common/msg";
		}
		List<Map<String, String>> sclist = scrapPlaceService.getPlaceScrapList(member.getMNo());
		model.addAttribute("sclist", sclist);
		return "0.3.3_account-starplace";
	}
	
	// 첨부이미지(스프링부트)
				@GetMapping("/honey/file/{fileName}") // 이미지 출력 경로 ex) 3.3_plant-parcel-out.jsp  42번째줄
				@ResponseBody
				public Resource downloadImage(@PathVariable("fileName") String fileName, Model model) throws IOException {
					return new UrlResource("file:" + savePath + fileName);
				}
				
				@RequestMapping("/honey/fileDown")
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
