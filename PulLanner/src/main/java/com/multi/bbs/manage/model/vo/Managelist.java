package com.multi.bbs.manage.model.vo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Managelist {
	private int bno;
	private int mno;
	private String status;
	private String plantname;
	private String petname;
	private String location;
	private String content;
	private String originalimg;
	private String renamedimg;
	private Date startdate;
	private Date waterdate;
	private Date createdate;
	private List<Plantreply> plantreplylist;
}

