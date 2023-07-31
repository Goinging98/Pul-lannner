package com.multi.bbs.manage.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class Managelist {

	private int bno;
	private int mno;
	private String plantname;
	private String petname;
	private String location;
	private String content;
	private String IMG;
	private Date startdate;
	private Date enrolldate;
	private Date modifydate;
}
