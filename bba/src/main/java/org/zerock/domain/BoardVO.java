package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private int bno;
	private String boardName;
	private String title;
	private String writer;
	private String content;
	private String img;
	private Date regDate;
	private int hit;
	private int commentCnt;
	private String comment;
	private String commenter;
	
	
}
