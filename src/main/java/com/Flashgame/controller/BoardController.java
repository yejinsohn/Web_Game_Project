package com.Flashgame.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.Flashgame.service.BoardService;

import jakarta.servlet.http.HttpSession;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/FlashHeaven")
	public String index() {
		return "index";
	}
	
	@GetMapping("/board/game")
	public String game() {
		return "/board/game";
	}
	
	@GetMapping("/board/notice")
	public String notice(Model model, @PageableDefault(size=3, sort="id", direction=Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("boards", boardService.StoryList(pageable));
		return "board/notice";
	}
	
	@GetMapping("/board/{id}")
	public String findById(@PathVariable int id, Model model, HttpSession session){
		model.addAttribute("board", boardService.detail(id));
		model.addAttribute("auth", session.getAttribute("auth"));
		return "board/detail";
	}
	
	@GetMapping("/board/{id}/updateForm")
	public String updateForm(@PathVariable int id, Model model) {
		model.addAttribute("board", boardService.detail(id));
		return "board/updateForm";		
	}
	
	@GetMapping("/board/write")
	public String writeform() {
		return "board/write";
	}
}
