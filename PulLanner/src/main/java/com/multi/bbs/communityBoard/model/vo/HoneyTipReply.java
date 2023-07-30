package com.multi.bbs.communityBoard.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class HoneyTipReply {
	private int rNo;
	private int bNo;
	private int mNo;
	private String id;
	private String content;
	private String type;
	private Date createDate;
	private Date modifyDate;
}