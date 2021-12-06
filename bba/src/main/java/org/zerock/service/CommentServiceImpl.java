package org.zerock.service;

import org.springframework.stereotype.Service;
import org.zerock.domain.CommentVO;
import org.zerock.mapper.CommentMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CommentServiceImpl implements CommentService {
	private CommentMapper mapper;
	
	@Override
	public void register(CommentVO comment) {
		log.info("register....." + comment);
		log.info("service"+comment);
		mapper.insert(comment);
	}
	@Override
	public CommentVO get(int bno) {
		log.info("get....." + bno);
		return mapper.show(bno);
	}
	@Override
	public boolean modify(CommentVO comment) {
		log.info("modify....." + comment);
		return mapper.update(comment) == 1;
	}
	@Override
	public boolean remove(int cno) {
		log.info("remove....." + cno);
		return mapper.delete(cno) == 1;
	}
}
