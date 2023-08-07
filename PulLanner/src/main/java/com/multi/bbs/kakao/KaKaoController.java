package com.multi.bbs.kakao;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.bbs.member.model.vo.Member;
import com.multi.bbs.shop.model.service.OrderService;
import com.multi.bbs.shop.model.service.ShopService;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class KaKaoController {

	@RequestMapping("/kakaoMap1")
	String kakaoMap1(Model model) {
		List<MapInfo> mapList = new ArrayList<>();
		mapList.add(new MapInfo("카카오","제주시 어쩌구",33.450705,126.570677));
		mapList.add(new MapInfo("생태연못","제주시 어쩌구",33.450936,126.569477));
		mapList.add(new MapInfo("텃밭","제주시 어쩌구",33.450879,126.569940));
		mapList.add(new MapInfo("근린공원","제주시 어쩌구",33.451393,126.570738));

		double x = 0.0;
		double y = 0.0;
		for(MapInfo map : mapList ) {
			x += map.getX();
			y += map.getY();
		}
		
		x = x / mapList.size();
		y = y / mapList.size();
		
		model.addAttribute("mapList",mapList);
		model.addAttribute("x", x);
		model.addAttribute("y", y);
		return "/kakao/kakaoMap1"; 
	}
	
	@RequestMapping("/kakaoMap2")
	String kakaoMap2(Model model) {
		List<MapInfo> mapList = new ArrayList<>();
		mapList.add(new MapInfo("카카오","제주시 어쩌구",33.450705,126.570677));
		mapList.add(new MapInfo("생태연못","제주시 어쩌구",33.450936,126.569477));
		mapList.add(new MapInfo("텃밭","제주시 어쩌구",33.450879,126.569940));
		mapList.add(new MapInfo("근린공원","제주시 어쩌구",33.451393,126.570738));

		double x = 0.0;
		double y = 0.0;
		for(MapInfo map : mapList ) {
			x += map.getX();
			y += map.getY();
		}
		
		x = x / mapList.size();
		y = y / mapList.size();
		
		model.addAttribute("mapList",mapList);
		model.addAttribute("x",x);
		model.addAttribute("y",y);
		return "/kakao/kakaoMap2"; 
	}
	
	
	@RequestMapping("/kakaoMap3")
	String kakaoMap3(Model model, String address) {
		model.addAttribute("address",address);
		return "/kakao/kakaoMap3"; 
	}
	
	@Autowired
    private KakaoPayService kakaopay;
	@Autowired
	OrderService service;
	@Autowired
	ShopService shopService;
	    
    @PostMapping("/kakaoPay")
    public String kakaoPay(@RequestParam Map<String, String> param, HttpSession session) {
        log.info("kakaoPay post............................................");
        session.setAttribute("param", param);
        return "redirect:" + kakaopay.kakaoPayReady(param);
 
    }
//	@PostMapping("/shopping/payment/order")
//	public String sendOrder(Model model, HttpSession session, int mno
//			, String name, String email, String phone, String addr1, String addr2, String addr3
//			, String memo, int payment) {
//		System.out.println("send order");
//		Member member = (Member) session.getAttribute("loginMember");
//		if(member == null) {
//			model.addAttribute("msg", "로그인이 필요합니다.");
//			model.addAttribute("location", "/");
//			return "common/msg";
//		}
//		
//		Map<String, String> map = new HashMap<String, String>();
//		map.put("oNO", null);
//		map.put("mNO", "" + member.getMNo());
//		map.put("name", name);
//		map.put("email", email);
//		map.put("phone", phone);
//		map.put("addr1", addr1);
//		map.put("addr2", addr2);
//		map.put("addr3", addr3);
//		map.put("memo", memo);
//		map.put("payment", "" + payment);
//		map.put("ORDERDATE", null);
//		System.out.println(map);
//		
//		
//		int result = service.insertOrderlist(map);
//		int result2 = service.insertOrderProductlist(member.getMNo());
//		int result3 = service.deleteCart(member.getMNo());
//		if(result > 0 && payment == 1) {
//			model.addAttribute("msg", "주문이 완료되었습니다.");
//			model.addAttribute("location", "/kakaopay");
//		} else if (result > 0){
//			model.addAttribute("msg", "주문이 완료되었습니다.");
//			model.addAttribute("location", "/mypage/orders");			
//		}
//		else {
//			model.addAttribute("msg", "주문을 실패하였습니다.");
//			model.addAttribute("location", "/mypage/orders");
//		}
//		
//		return "common/msg";
//	}
    
    @GetMapping("/kakaoPaySuccess")
    public String kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model, HttpSession session) {
        log.info("kakaoPaySuccess get............................................");
        log.info("kakaoPaySuccess pg_token : " + pg_token);
        @SuppressWarnings("unchecked")
		Map<String, String> param = (Map<String, String>) session.getAttribute("param");
        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token, param));
        return "kakao/kakaoPaySuccess";
    }
	
}
