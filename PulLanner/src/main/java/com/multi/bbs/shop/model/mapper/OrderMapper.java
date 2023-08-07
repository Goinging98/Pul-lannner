package com.multi.bbs.shop.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.bbs.shop.model.vo.Cart;
import com.multi.bbs.shop.model.vo.Orderlist;
import com.multi.bbs.shop.model.vo.Orderproduct;

@Mapper
public interface OrderMapper {
	int insertOrderlist(Map<String, String> map);
	int insertOrderProductlist(int mNO);
	int deleteCart(int mNO);
	List<Orderlist> selectOrderList(int mNO);
	List<Orderproduct> selectOrderProduct(int oNO);
	int selectOrderId(int mNO);
	int updateOrderProductList();
	int selectMostRecent();
}



