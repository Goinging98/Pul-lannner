package com.multi.bbs.manage.model.vo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
	
	public class Plantreply {
		private int pno;
		private int bno;
		private int mno;
		private int poption;
		private String content;
		private String status;
		private Date waterdate;
		private Date createdate;
		
		
	}

	
		
	


