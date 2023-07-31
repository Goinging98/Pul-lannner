package com.multi.bbs.manage.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PlantManage {

	
	
	private int cno;
	private int bno;
	private int mno;
	private int working; // 1 환기하기 2 물주기 숫자형식으로
	private Date feeddate;
	private Date enrolldate;
	private String content;
}
