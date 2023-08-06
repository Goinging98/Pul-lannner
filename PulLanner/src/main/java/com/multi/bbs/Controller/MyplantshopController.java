package com.multi.bbs.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.member.model.service.MemberService;
import com.multi.bbs.member.model.vo.Member;
import com.multi.bbs.plantShop.model.service.PlantShopService;
import com.multi.bbs.plantShop.model.vo.Plantshop;

import lombok.extern.slf4j.Slf4j;

@Slf4j // log4j 선언 대신에 작성해주는 lombok 어노테이션
@Controller
@SessionAttributes("loginMember") // loginMember를 model에서 취급할때 세션으로 처리하는 어노테이션
public class MyplantshopController {
	@Autowired
	private PlantShopService plantshopService;

	@Autowired
	private MemberService service;
	
	@RequestMapping("/mypage/myselling")
	public String Mypage(Model model, 
			@SessionAttribute(name = "loginMember", required = false) 
			Member loginMember) {

		System.out.println("!!!!!!!!!!!!!!!!!@@@@@@@@@@@@@@");
		// 자신이 쓴 글 가져오는 코드
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", loginMember.getId());
		log.info("@@@@@my page accessed!!! ");
		int myplantshopCount = plantshopService.getPlantShopCount(param);
		PageInfo pageInfo = new PageInfo(1, 5, myplantshopCount, 2);
		List<Plantshop> myplantshoplist = plantshopService.getPlantShopList(pageInfo, param);
		log.info("@@@@@@@myplantshoplist " + myplantshoplist);
		model.addAttribute("myplantshoplist", myplantshoplist);
		System.out.println(myplantshoplist);
		
		return "0.1.2_account-sellinglist";
		
		
}
}
