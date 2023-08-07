package com.multi.bbs.shop.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Orderlist {
//	private int oNo;
//	private int mNo;
//	private Date orderDate;
//	private int payment;	//1 kakao, 2 cash
	
	private int oNO ;
    private int mNO ;
    private String name;
    private String email;
    private String phone;
    private String addr1;  
    private String addr2;
    private String addr3;
    private String memo;
    private String payment;
    private Date orderdate;
}
