package com.multi.bbs.Controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.shop.model.service.ShopService;
import com.multi.bbs.shop.model.vo.Product;

import jakarta.servlet.http.HttpSession;

@Controller
public class ItemShopController {
	
@Autowired
ShopService shopService;

//	@Autowired
//	private BoardService service;

//	@Autowired
//	private MemberService memberService;

	private static final Logger logger = LoggerFactory.getLogger(ItemShopController.class);	

	@GetMapping("/ItemShop")
	public String mainPage(Model model,
			@RequestParam Map<String, Object> paramMap, 
			@RequestParam(required = false) String[] kinds,
			@RequestParam(required = false) String[] brands
			) {
		
		int page = 1;
		System.out.println(page);
		System.out.println(paramMap);
		System.out.println(Arrays.toString(kinds));
		System.out.println(Arrays.toString(brands));
		
		if(paramMap.get("page") != null) {
			try {
				page = Integer.parseInt((String) paramMap.get("page"));
			} catch (Exception e) {}
		}
		
		if(kinds != null && kinds.length > 0) {
			paramMap.put("kinds", Arrays.asList(kinds));
		}else {
			paramMap.remove("kinds");
		}
		
		if(brands != null  && brands.length > 0 ) {
			paramMap.put("brands", Arrays.asList(brands));
		}else {
			paramMap.remove("brands");
		}
		
		int count = shopService.getProductCount(paramMap);
		PageInfo pageInfo = new PageInfo(page, 5, count, 12);
		List<Product> list = shopService.getProductList(pageInfo, paramMap);
		
		model.addAttribute("count", count);
		model.addAttribute("list", list);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("paramMap", paramMap);
		
		return "3.7_itemshop";
	}
		
		

	
}

