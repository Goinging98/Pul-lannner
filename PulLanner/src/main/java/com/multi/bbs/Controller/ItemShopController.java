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
public class ItemShopController {

//	@Autowired
//	private BoardService service;

//	@Autowired
//	private MemberService memberService;

	private static final Logger logger = LoggerFactory.getLogger(ItemShopController.class);	

	@RequestMapping(value = "ItemShop", method = RequestMethod.GET)
	public String itemshop(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome plantshop! The client locale is {}.", locale);
		return "3.7_itemshop";
	}			

	
}

