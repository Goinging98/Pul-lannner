package com.multi.bbs;

import java.util.ArrayList;
import java.util.Collections;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.bbs.Arboretum.model.service.arboretumService;
import com.multi.bbs.Arboretum.model.vo.TourVO;
import com.multi.bbs.api.naver.NaverSearchAPI;
import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.communityBoard.model.service.ProudBoardService;
import com.multi.bbs.communityBoard.model.vo.ProudBoard;
import com.multi.bbs.plantSearch.model.service.plantSearchService;
import com.multi.bbs.plantSearch.model.vo.FlowerDtl;
import com.multi.bbs.plantShop.model.service.PlantShopService;
import com.multi.bbs.plantShop.model.vo.Plantshop;
import com.multi.bbs.shop.model.service.ShopService;
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
	@Autowired
    private arboretumService arboretumService;
	@Autowired
    private plantSearchService plantSearchService;
	@Autowired
	private ProudBoardService proudBoardService;
	
	@Autowired
	private PlantShopService plantShopService;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = {"/", "/main"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session, Map<String, Object> map, Integer id) {
		logger.info("Welcome home! The client locale is {}.", locale);
//		Member loginMember = memberService.login("admin", "1212");
//		session.setAttribute("loginMember", loginMember);
//		test();
		int page = 1;
		Map<String, Object> paramMap = new HashMap<>();
		int count = shopService.getProductCount(paramMap);
		PageInfo pageInfo = new PageInfo(page, 5, count, 6);
		List<Product> plist1 = shopService.getProductList(pageInfo, paramMap);
		model.addAttribute("plist1", plist1);
		
		//=============식물분양게시판=====================
		int parcelpage = 1;
		Map<String, Object> paramMap1 = new HashMap<>();
		int count1 = plantShopService.getPlantShopCount(paramMap1);
		PageInfo pageInfo1 = new PageInfo(page, 12, count1, 12);
		List<Plantshop> parcellist = plantShopService.getPlantShopList(pageInfo1, paramMap1);
		model.addAttribute("parcellist", parcellist);
		//=============랜덤으로 장소 추천=====================
		List<TourVO> randomList = arboretumService.selectRandomList3(3);
		model.addAttribute("randomList", randomList);
		//=============오늘의 꽃=====================
        List<FlowerDtl> todayFlower = plantSearchService.todayFlower(1);
        model.addAttribute("todayFlower", todayFlower);
        
        //==========식물 자랑=============
        List<ProudBoard> proudList = proudBoardService.getProudBoardRandomList(map);
        model.addAttribute("proudList", proudList);

		
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
