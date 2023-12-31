package com.multi.bbs.Controller;

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
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.bbs.member.model.vo.Member;
import com.multi.bbs.shop.model.service.OrderService;
import com.multi.bbs.shop.model.service.ShopService;
import com.multi.bbs.shop.model.vo.Orderlist;
import com.multi.bbs.shop.model.vo.Orderproduct;
import com.multi.bbs.shop.model.vo.Product;
import com.multi.bbs.member.model.service.MyproudService;
import com.multi.bbs.communityBoard.model.vo.ProudBoard;
import com.multi.bbs.manage.model.service.ManageBoardService;
import com.multi.bbs.manage.model.vo.Managelist;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);

	@Autowired
	private MyproudService service;
	
	@Autowired
	private ShopService shopService;
	
	@RequestMapping(value = "/mypage/mywriting", method = RequestMethod.GET)
	public String mywriting(Model model, HttpSession session) {
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/login");
			return "common/msg";
		}
		
		String id = member.getId();
		logger.info("account writinglist page");
		
		int proudBoardCount = service.getmyProudBoardCount(id);
		List<ProudBoard> list = service.getmyProudBoardList(id);
		
		model.addAttribute("list", list);
		model.addAttribute("proudBoardCount", proudBoardCount);
		return "0.1.1_account-writinglist";
	}

//	@RequestMapping(value = "/mypage/myselling", method = RequestMethod.GET)
//	public String myselling(Model model, HttpSession session) {
//		Member member = (Member) session.getAttribute("loginMember");
//		if(member == null) {
//			model.addAttribute("msg", "로그인이 필요합니다.");
//			model.addAttribute("location", "/login");
//			return "common/msg";
//		}
//		
//		String id = member.getId();
//		logger.info("account writinglist page");
//		
//		int proudBoardCount = service.getmyProudBoardCount(id);
//		List<ProudBoard> list = service.getmyProudBoardList(id);
//		
//		model.addAttribute("list", list);
//		model.addAttribute("proudBoardCount", proudBoardCount);
//		return "0.1.2_account-sellinglist";
//	}

	@Autowired
	private ManageBoardService myplantservice;
	@RequestMapping(value = "/mypage/mypullanner", method = RequestMethod.GET)
	public String mypullanner(Model model, HttpSession session) {
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/login");
			return "common/msg";
		}
		
		logger.info("account pullanner page");
		List<Managelist> mlist = myplantservice.selectMANAGELISTList(member.getMNo());
		model.addAttribute("mlist", mlist);
		
		return "0.1.3_account-pullanner";
	}

	@RequestMapping(value = "/mypage/shoppingbag", method = RequestMethod.GET)
	public String shoppingbag(Locale locale, Model model, HttpSession session) {
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/login");
			return "common/msg";
		}
	
		List<Product> list = shopService.getCartProductList(member.getMNo());
		model.addAttribute("list", list);
		int totalPrice = 0;
		for(Product item : list) {
			totalPrice += item.getLprice() * item.getAmount(); 
		}
		model.addAttribute("totalPrice", totalPrice);
		
		return "0.2.2_account-shoppingbag";
	}

	@RequestMapping(value = "/mypage/favorites", method = RequestMethod.GET)
	public String favorites(Locale locale, Model model, HttpSession session) {
		logger.info("my favorites page");
		return "0.2.3_account-favorites";
	}

	@Autowired
	OrderService orderservice;
	@RequestMapping(value = "/mypage/overview", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("account overview page");
		Member member = (Member) session.getAttribute("loginMember");
		if(member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/login");
			return "common/msg";
		}
		int totalAmount;
		int totalPrice;
		
		List<Orderlist> olist = orderservice.getOrderList(member.getMNo());
		for(Orderlist order : olist) {
			totalAmount = 0;
			totalPrice = 0;
			List<Orderproduct> list = orderservice.getOrderProduct(order.getONO());
			order.setProductList(list);
			for(Orderproduct item : list) {
				totalPrice += item.getLprice() * item.getAmount(); 
				totalAmount += item.getAmount();
			}
			totalPrice += 3000;
			order.setTotalAmount(totalAmount);
			order.setTotalPrice(totalPrice);
			
		}
		model.addAttribute("olist", olist);
		return "0.4.1_account-overview";
	}
	
	@RequestMapping(value = "/mypage/infochange", method = RequestMethod.GET)
	public String change(Locale locale, Model model, HttpSession session) {
		logger.info("account infochange page");
		return "0.4.2_account-change";
	}
	
}
