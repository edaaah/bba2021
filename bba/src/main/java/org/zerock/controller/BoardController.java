package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.domain.CommentVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.BoardService;
import org.zerock.service.CommentService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/board/")
@AllArgsConstructor
public class BoardController {

	private BoardService service;
	private CommentService comment;
	
	@GetMapping("notice_list")
	public void noticeList(Model model, Criteria cri) {
		System.out.println(cri);
		model.addAttribute("list", service.getList(cri));
		
		int total=service.getTotalCount(cri);	
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	@GetMapping("qna_list")
	public void qnaList(Model model, Criteria cri) {
		System.out.println(cri);
		model.addAttribute("list", service.getList(cri));
		//model.addAttribute("clist", comment.get(bno));
		int total=service.getTotalCount(cri);	
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	@GetMapping("register")
	public void registerGet(BoardVO board) {
		System.out.println(board);
	}
	@PostMapping("register")
	public String registerPost(BoardVO board) {
		service.register(board);
		System.out.println(board);
//		log.info("Controller : " +board);
//		rttr.addAttribute("bno", board.getBno());
//		return "redirect:/board/notice_list";
		return "redirect:/board/notice_list?boardName=notice";
	}
	@GetMapping("modify")
	public void modifyGet(int bno, Model model) {
		model.addAttribute("modify", service.get(bno));
	}
	@PostMapping("modify")
	public String modifyPost(BoardVO board, Model model) {
		System.out.println("modify="+board);
		model.addAttribute("result", service.modify(board));
		//rttr.addAttribute("bno", board.getBno());
		return "redirect:/board/notice_list?boardName=notice";
	}
	@GetMapping("remove")
	public String remove(int bno) {
		service.remove(bno);
		return "redirect:/board/notice_list?boardName=notice";
	}
	@GetMapping("comment_register")
	public void commentRregisterGet(CommentVO vo) {
		
		System.out.println(vo);
	}
	@PostMapping("comment_register")
	public String commentRregisterPost(CommentVO vo) {
		System.out.println("comment_register="+vo);
		comment.register(vo);
		
		return "redirect:/board/qna_list?boardName=qna";
	}
	
	
}
