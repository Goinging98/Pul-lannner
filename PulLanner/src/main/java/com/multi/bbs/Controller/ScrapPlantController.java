package com.multi.bbs.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.member.model.vo.Member;
import com.multi.bbs.scrap.model.service.ScrapPlaceService;
import com.multi.bbs.scrap.model.service.ScrapPlantService;
import com.multi.bbs.scrap.model.vo.Scrap_place;
import com.multi.bbs.scrap.model.vo.Scrap_plant;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ScrapPlantController {
	@Autowired
	ScrapPlantService scrapPlantService;
	
	@Autowired
	ScrapPlaceService scrapPlaceService;

	// ------------------------------------------------------- 글 스크랩 
	@RequestMapping(value = "/mypage/stararticle", method = RequestMethod.GET)
	public String stararticle(Locale locale, Model model, HttpSession session) {
		System.out.println("star article page");
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

	
}
