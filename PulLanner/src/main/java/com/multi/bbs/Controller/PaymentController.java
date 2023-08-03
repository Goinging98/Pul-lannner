package com.multi.bbs.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.multi.bbs.member.model.vo.Member;
import com.multi.bbs.shop.model.service.ShopService;
import com.multi.bbs.shop.model.vo.Cart;
import com.multi.bbs.shop.model.vo.Product;

import jakarta.servlet.http.HttpSession;
import jakarta.websocket.server.PathParam;

@Controller
public class PaymentController {

	@Autowired
	ShopService shopService;

	@RequestMapping("/mypage/shoppingbag/payment")
	public String cartView(Model model, HttpSession session) {
		Member member = (Member) session.getAttribute("loginMember");
		if (member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}

		List<Product> list = shopService.getCartProductList(member.getMNo());
		model.addAttribute("list", list);
		return "3.4_shopping_bag";
	}

//	 장바구니 기능은 AJAX로 구현할것!! 아래 임시 코드나 급할때만 사용하세요.
	@RequestMapping("/mypage/shoppingbag/addcart")
	String addCart(Model model, HttpSession session, int pno, String returnURL) {
		Member member = (Member) session.getAttribute("loginMember");
		if (member == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}

		Map<String, String> map = new HashMap<>();
		map.put("pno", "" + pno);
		map.put("mno", "" + member.getMNo());

		int result = 0;
		List<Cart> list = shopService.getCart(map);
		if (list == null || list.size() == 0) {
			Cart cart = new Cart(member.getMNo(), pno, 1);
			result = shopService.insertCart(cart);
		} else {
			Cart cart = list.get(0);
			cart.setAmount(cart.getAmount() + 1);
			result = shopService.updateCart(cart);
		}

		if (result > 0) {
			model.addAttribute("msg", "장바구니에 담겼습니다.");
			model.addAttribute("location", returnURL);
		} else {
			model.addAttribute("msg", "장바구니 담기에 실패하였습니다.");
			model.addAttribute("location", returnURL);
		}
		return "common/msg";
	}

}
