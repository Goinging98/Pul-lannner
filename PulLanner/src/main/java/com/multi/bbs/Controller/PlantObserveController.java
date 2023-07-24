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
public class PlantObserveController {
	
//	@Autowired
//	private BoardService service;
	
//	@Autowired
//	private MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(PlantObserveController.class);
	
	@RequestMapping(value = "/Observe", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome honeytip! The client locale is {}.", locale);
//		Member loginMember = memberService.login("admin", "1212");
//		session.setAttribute("loginMember", loginMember);
//		test();
		return "4.3.0_observe_list";
	}
}
	
