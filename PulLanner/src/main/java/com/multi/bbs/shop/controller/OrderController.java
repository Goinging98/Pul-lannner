package com.multi.bbs.shop.controller;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import jakarta.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.kakao.KakaoPayService;
import com.multi.bbs.member.model.vo.Member;
import com.multi.bbs.shop.model.service.OrderService;
import com.multi.bbs.shop.model.service.ShopService;
import com.multi.bbs.shop.model.vo.Cart;
import com.multi.bbs.shop.model.vo.Orderlist;
import com.multi.bbs.shop.model.vo.Orderproduct;
import com.multi.bbs.shop.model.vo.Product;
import com.mysql.cj.x.protobuf.MysqlxCrud.Collection;

@Controller
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

	@Autowired
	OrderService service;
	@Autowired
	ShopService shopService;
	
	@Autowired
    private KakaoPayService kakaopay;

	
	@RequestMapping(value = "/mypage/orders", method = RequestMethod.GET)
	public String orders(Locale locale, Model model, HttpSession session) {
		logger.info("my orders page");
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/login");
			return "common/msg";
		}
		int totalAmount;
		int totalPrice;
		
		List<Orderlist> olist = service.getOrderList(member.getMNo());
		for(Orderlist order : olist) {
			totalAmount = 0;
			totalPrice = 0;
			List<Orderproduct> list = service.getOrderProduct(order.getONO());
			System.out.println(list);
			order.setProductList(list);
			System.out.println(order);
			for(Orderproduct item : list) {
				totalPrice += item.getLprice() * item.getAmount(); 
				totalAmount += item.getAmount();
			}
			totalPrice += 3000;
			order.setTotalAmount(totalAmount);
			order.setTotalPrice(totalPrice);
			
		}
		model.addAttribute("olist", olist);
		
		return "0.2.1_account-orders";
	}
	
	
	
	@PostMapping("/shopping/payment/order")
	public String sendOrder(@RequestParam Map<String, String> param, Model model, HttpSession session, int mno
			, String name, String email, String phone, String addr1, String addr2, String addr3
			, String memo, int payment, String item_name, int total_amount, int quantity) {
		System.out.println("send order");
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("oNO", null);
		map.put("mNO", "" + member.getMNo());
		map.put("name", name);
		map.put("email", email);
		map.put("phone", phone);
		map.put("addr1", addr1);
		map.put("addr2", addr2);
		map.put("addr3", addr3);
		map.put("memo", memo);
		map.put("payment", "" + payment);
		map.put("ORDERDATE", null);
		System.out.println(map);
		
		
		int result = service.insertOrderlist(map);
		int result2 = service.insertOrderProductlist(member.getMNo());
		int result3 = service.deleteCart(member.getMNo());
		if(result > 0 && payment == 1) {
	        System.out.println("kakaoPay post............................................");
			model.addAttribute("msg", "카카오페이 결제를 시작합니다.");
	        session.setAttribute("param", param);
	        return "redirect:" + kakaopay.kakaoPayReady(param);
	        
		} else if (result > 0){
			model.addAttribute("msg", "주문이 완료되었습니다.");
			model.addAttribute("location", "/mypage/orders");			
		}
		else {
			model.addAttribute("msg", "주문을 실패하였습니다.");
			model.addAttribute("location", "/mypage/orders");
		}
		
		return "common/msg";
	}
	
}
