package com.multi.bbs.shop.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Orderproduct {
	private int oNo;
	private int pNo;
	private int amount;
}
