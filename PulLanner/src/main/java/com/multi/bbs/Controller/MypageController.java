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
	
	@RequestMapping(value = "/mypage/infochange", method = RequestMethod.GET)
	public String change(Locale locale, Model model, HttpSession session) {
		logger.info("account infochange page");
		return "0.1.2_account-change";
	}
	
	@RequestMapping(value = "/mypage/mywriting", method = RequestMethod.GET)
	public String mywriting(Locale locale, Model model, HttpSession session) {
		logger.info("account writinglist page");
		return "0.1.3_account-writinglist";
	}

	@RequestMapping(value = "/mypage/starplant", method = RequestMethod.GET)
	public String stararticle(Locale locale, Model model, HttpSession session) {
		logger.info("star plant page");
		return "0.2.1_account-plant";
	}
	
	@RequestMapping(value = "/mypage/orders", method = RequestMethod.GET)
	public String orders(Locale locale, Model model, HttpSession session) {
		logger.info("my orders page");
		return "0.3.1_account-orders";
	}

	@RequestMapping(value = "/mypage/shoppingbag", method = RequestMethod.GET)
	public String shoppingbag(Locale locale, Model model, HttpSession session) {
		logger.info("my shopping bag page");
		return "0.3.2_account-shoppingbag";
	}

	@RequestMapping(value = "/mypage/favorites", method = RequestMethod.GET)
	public String favorites(Locale locale, Model model, HttpSession session) {
		logger.info("my favorites page");
		return "0.3.3_account-favorites";
	}
	
	
}
