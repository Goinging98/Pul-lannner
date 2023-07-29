package com.multi.bbs.shop.controller;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.member.model.vo.Member;
import com.multi.bbs.shop.model.service.ShopService;
import com.multi.bbs.shop.model.vo.Cart;
import com.multi.bbs.shop.model.vo.Product;
import com.multi.bbs.shop.model.vo.ProductReply;
import com.mysql.cj.x.protobuf.MysqlxCrud.Collection;

@Controller
public class ShopController {
	
	@Autowired
	ShopService shopService;
	
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
	
	
	public static int pageCount = 0;
	
	@GetMapping("/shop/product")
	public String productView(Model model, int pno) {
		Product product = shopService.getProductById(pno);
		List<ProductReply> replyList = shopService.getProductReplyList(pno);
		
		
		// 대표상품 4개, - 키보드, 마우스 2세트
		Map<String, Object> map = new HashMap<>();
		map.put("title", "키보드");
		int count = shopService.getProductCount(map);
		System.out.println(count);
		PageInfo pageInfo = new PageInfo(pageCount++ % 5 + 1, 6, count, 6);
		List<Product> plist1 = shopService.getProductList(pageInfo, map);
		
		map.put("title", "마우스");
		count = shopService.getProductCount(map);
		System.out.println(count);
		pageInfo = new PageInfo(pageCount++ % 5 + 1, 6, count, 6);
		List<Product> plist2 = shopService.getProductList(pageInfo, map);
		plist1.addAll(plist2);
		Collections.shuffle(plist1);
		model.addAttribute("plist1", plist1);
		
		
		model.addAttribute("product", product);
		model.addAttribute("plist1", plist1);
		model.addAttribute("replyList", replyList);
		return "3.7_itemshop";
	}
	
	@PostMapping("/shop/writeReply")
	public String writeReply(Model model, ProductReply reply, HttpSession session) {
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/shop/product?pno=" + reply.getPno());
			return "common/msg";
		}
		
		reply.setMno(member.getMNo());
		System.out.println(reply);
		int result = shopService.insertProductReply(reply);
		shopService.updateProductAVG(reply.getPno());
		
		if(result > 0) {
			model.addAttribute("msg", "댓글이 성공적으로 작성되었습니다.");
			model.addAttribute("location", "/shop/product?pno=" + reply.getPno());
		}else {
			model.addAttribute("msg", "댓글 작성에 실패하였습니다.");
			model.addAttribute("location", "/shop/product?pno=" + reply.getPno());
		}
		return "common/msg";
	}
	
	@PostMapping("/shop/deleteReply")
	public String writeReply(Model model, int rno, int pno, HttpSession session) {
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/shop/product?pno=" + pno);
			return "common/msg";
		}
		int result = shopService.deleteProductReply(rno);
		if(result > 0) {
			model.addAttribute("msg", "댓글이 삭제 되었습니다.");
			model.addAttribute("location", "/shop/product?pno=" + pno);
		}else {
			model.addAttribute("msg", "댓글 삭제에 실패하였습니다.");
			model.addAttribute("location", "/shop/product?pno=" + pno);
		}
		return "common/msg";
	}
	
	@RequestMapping("/shop/cart")
	public String cartView(Model model, HttpSession session) {
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		List<Product> list = shopService.getCartProductList(member.getMNo());
		model.addAttribute("list", list);
		return "shop/shop-cart";
	}
	
	

	// 장바구니 기능은 AJAX로 구현할것!! 아래 임시 코드나 급할때만 사용하세요.
	@RequestMapping("/shop/addCart")
	String addCart(Model model, HttpSession session, int pno) {
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		Map<String, String> map = new HashMap<>();
		map.put("pno", ""+pno);
		map.put("mno", ""+member.getMNo());
		
		int result = 0;
		List<Cart> list = shopService.getCart(map);
		if(list == null || list.size() == 0) {
			Cart cart = new Cart(member.getMNo(), pno, 1);
			result = shopService.insertCart(cart);
		}else {
			Cart cart = list.get(0);
			cart.setAmount(cart.getAmount() + 1);
			result = shopService.updateCart(cart);
		}
		
		if(result >0) {
			model.addAttribute("msg", "장바구니에 담겼습니다.");
			model.addAttribute("location", "/shop/main");
		} else {
			model.addAttribute("msg", "장바구니 담기에 실패하였습니다.");
			model.addAttribute("location", "/shop/main");
		}
		return "common/msg";
	}
	
	
	
}
