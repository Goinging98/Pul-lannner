package com.multi.bbs.kakao;

import lombok.Data;

@Data
public class AmountVO {
	private int total;
	private int tax_free;
	private int vat;
	private int point; 
	private int discount;
}
