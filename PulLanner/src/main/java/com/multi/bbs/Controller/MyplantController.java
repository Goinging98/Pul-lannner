package com.multi.bbs.Controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jakarta.servlet.http.HttpSession;

@Controller
public class MyplantController{
	
//	@Autowired
//	private BoardService service;
	
//	@Autowired
//	private MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(PlantShopController.class);
	
	@RequestMapping(value = "/Myplant", method = RequestMethod.GET)
	public String MyPlant(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome plantshop! The client locale is {}.", locale);
//		Member loginMember = memberService.login("admin", "1212");
//		session.setAttribute("loginMember", loginMember);
//		test();
		return "5.1_myplant-main";
	}	

	private static final Logger logger2 = LoggerFactory.getLogger(PlantShopController.class);
	
	@RequestMapping(value = "/Plantwrite", method = RequestMethod.GET)
	public String Plantwrite(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome plantshop! The client locale is {}.", locale);
//		Member loginMember = memberService.login("admin", "1212");
//		session.setAttribute("loginMember", loginMember);
//		test();
		return "5.2_myplant-gwanri";
	}
}
	
