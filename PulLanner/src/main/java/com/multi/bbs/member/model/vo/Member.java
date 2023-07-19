package com.multi.bbs.member.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	private int mNo;
	private String id;
	private String password;
	private String role;
	private String name;
	private String phone;
	private String email;
	private String address;
	private String hobby = "";
	private String status;
	private Date enrollDate;
	private Date modifyDate;
//	임윤정테스트
	//임윤정테스트2
}
