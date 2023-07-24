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
public class PlantHoneyTipController {
	
//	@Autowired
//	private BoardService service;
	
//	@Autowired
//	private MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(PlantHoneyTipController.class);
	
	@RequestMapping(value = "/HoneyTip", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome honeytip! The client locale is {}.", locale);
//		Member loginMember = memberService.login("admin", "1212");
//		session.setAttribute("loginMember", loginMember);
//		test();
		return "4.2.0_honeytip_list";
	}
}
	
