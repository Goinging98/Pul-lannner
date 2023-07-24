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
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(PlantShopController.class);
	
	@RequestMapping(value = "/mypage/overview", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("account overview page");
		return "0.1.1_account-overview";
	}
}
