package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommentVO {
	private int cno;
	private int bno;
	private String comment;
	private String commenter;
	private Date comDate;
	private Date comUpdatedate;
}
