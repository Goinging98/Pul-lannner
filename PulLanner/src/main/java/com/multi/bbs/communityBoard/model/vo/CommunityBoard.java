package com.multi.bbs.communityBoard.model.vo;

import java.util.Date;
import java.util.List;

import com.multi.bbs.board.model.vo.Reply;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CommunityBoard {
	private int cbNo;
	private int mNo;
	private String id;
	private String title;
	private String content;
	private String originalFileName;
	private String renamedFileName;
	private int readCount;
	private String status;
	private String type;
	private List<Reply> replyList;
	private Date createDate;
	private Date modifyDate;

}
