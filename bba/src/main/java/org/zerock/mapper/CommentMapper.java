package org.zerock.mapper;

import org.zerock.domain.CommentVO;

public interface CommentMapper {
	
	public void insert(CommentVO vo);
	
	public CommentVO show(int bno);
	
	public int delete(int cno);
	
	public int update(CommentVO vo);
	
}
