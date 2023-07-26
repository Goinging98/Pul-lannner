package com.multi.bbs.shop.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.shop.model.mapper.ShopMapper;
import com.multi.bbs.shop.model.vo.Cart;
import com.multi.bbs.shop.model.vo.Product;
import com.multi.bbs.shop.model.vo.ProductReply;

@Service
public class ShopService {
	@Autowired
	ShopMapper mapper;
	
	@Transactional(rollbackFor = Exception.class)
	public int insertProduct(Product p) {
		return mapper.insertProduct(p);
	}
	
	public int getProductCount(Map<String, Object> param) {
		return mapper.selectProductCount(param);
	}
	
	public List<Product> getProductList(PageInfo pageInfo, Map<String, Object> param){
		param.put("limit", ""+pageInfo.getListLimit());
		param.put("offset", ""+(pageInfo.getStartList() - 1));
		return mapper.selectProductList(param);
	}
	
	public Product getProductById(int pId){
		return mapper.selectProductById(pId);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int insertProductReply(ProductReply reply) {
		return mapper.insertProductReply(reply);
	}
	
	
	@Transactional(rollbackFor = Exception.class)
	public int deleteProductReply(int rNo) {
		return mapper.deleteProductReply(rNo);
	}
	
	public List<ProductReply> getProductReplyList(int pNo){
		return mapper.selectProductReplyList(pNo);
	}
	
	public int updateProductAVG(int pNo) {
		return mapper.updateProductAVG(pNo);
	}
	
	
	public List<Cart> getCart(Map<String, String> map){
		return mapper.selectCart(map);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int insertCart(Cart cart) {
		return mapper.insertCart(cart);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int updateCart(Cart cart) {
		return mapper.updateCart(cart);
	}
	
	public List<Product> getCartProductList(int mno){
		return mapper.selectCartProductList(mno);
	}

}
