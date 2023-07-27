package com.multi.bbs;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.bbs.api.naver.NaverSearchAPI;
import com.multi.bbs.shop.model.service.ShopService;
import com.multi.bbs.shop.model.vo.News;
import com.multi.bbs.shop.model.vo.Product;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	
//	@Autowired
//	private BoardService service;
	
//	@Autowired
//	private MemberService memberService;
	
	
	@Autowired
	ShopService shopService;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = {"/", "/main"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
//		Member loginMember = memberService.login("admin", "1212");
//		session.setAttribute("loginMember", loginMember);
//		test();
		
		return "0.0_main";
	}
	
	@ResponseBody
	@RequestMapping(value = {"/init"}, method = RequestMethod.GET)
	public String init() {
		int result = initDB();
		return "초기화 결과 : " + result;
	}

	private int initDB() {
		int result = 0;
		List<Product> plist = new ArrayList<>();
		plist.addAll(NaverSearchAPI.getProductList("모종삽", 50, 1));
		plist.addAll(NaverSearchAPI.getProductList("가정 식물 도구", 20, 1));
		plist.addAll(NaverSearchAPI.getProductList("가정용 식물 영양제", 20, 1));
		Collections.shuffle(plist);
		
		for(Product p : plist) {
			int result2 = shopService.insertProduct(p);
			result += result2;
		}
		
		return result;
	}

}
