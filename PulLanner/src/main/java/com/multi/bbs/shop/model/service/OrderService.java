package com.multi.bbs.shop.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.bbs.shop.model.mapper.OrderMapper;
import com.multi.bbs.shop.model.vo.Cart;
import com.multi.bbs.shop.model.vo.Orderlist;
import com.multi.bbs.shop.model.vo.Orderproduct;

@Service
public class OrderService {
	@Autowired
	OrderMapper mapper;
	
	@Transactional(rollbackFor = Exception.class)
	public int insertOrderlist(Map<String, String> map){
		return mapper.insertOrderlist(map);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int insertOrderProductlist(int mNO){
		return mapper.insertOrderProductlist(mNO);
	}
		
	@Transactional(rollbackFor = Exception.class)
	public int deleteCart(int mNO) {
		return mapper.deleteCart(mNO);
	}
	
	public List<Orderlist> getOrderList(int mNo){
		return mapper.selectOrderList(mNo);
	}
	
	public List<Orderproduct> getOrderProduct(int oNO){
		return mapper.selectOrderProduct(oNO);
	}
	
	public int updateOrderProductList() {
		return mapper.updateOrderProductList();
	}
	
	public int selectMostRecent() {
		return mapper.selectMostRecent();
	}



}
