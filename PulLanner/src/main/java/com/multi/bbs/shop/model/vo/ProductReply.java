package com.multi.bbs.shop.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductReply {
	private int rno;
	private int mno;
	private int pno;
	private String content;
	private String name;
	private int score;
	private Date createDate;
}
