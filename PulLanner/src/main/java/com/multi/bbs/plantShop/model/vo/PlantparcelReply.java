package com.multi.bbs.plantShop.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PlantparcelReply {
	private int parcelrno;			// rNO 			INT PRIMARY KEY AUTO_INCREMENT,
	private int parcelno;			// bNO 			INT,
	private int mno;			// mNO 			INT,
	private String writerId;		// writerId 	String,
	private String parcelrcontent;		// CONTENT 		VARCHAR(1000),
	private String rstatus;		// STATUS 		VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
	private Date rcrtDate;	// CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
	private Date rmdfDate;	// MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
}
