package org.zerock.service;

import org.zerock.domain.CommentVO;

public interface CommentService {
	
	public void register(CommentVO comment);
	
	public CommentVO get(int bno);

	public boolean modify(CommentVO comment);

	public boolean remove(int cno);
}
