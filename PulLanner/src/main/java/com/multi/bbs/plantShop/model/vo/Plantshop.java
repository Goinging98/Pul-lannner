package com.multi.bbs.plantShop.model.vo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Plantshop {
	private int parcelno;
	private int mno;
	private String writerId;
	private String parceltitle;
	private String parcelcontent;
	private String parceltype;
	private String parcelimg;
	private String parcelimgedt;
	private int parcelprice;
	private int parcelcount;
	private String parcelstatus;
	private Date crtDate;
	private Date mdfDate;
	private String planttype;
	private String plantno;
	private List<PlantparcelReply> parcelreplies;
}
