package com.multi.bbs.communityBoard.model.vo;

import java.util.Date;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProudBoard {
	private int bNo;
	private int mNo;
	private String id;
	private String name;
	private String title;
	private String content;
	private String originalFileName;
	private String renamedFileName;
	private int readCount;
	private String status;
	private String type;
	private Date createDate;
	private Date modifyDate;
}