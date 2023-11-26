package com.Flashgame.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.Flashgame.domain.Auth;
import com.Flashgame.dto.BoardSaveDto;
import com.Flashgame.dto.ResponseDto;
import com.Flashgame.model.Board;
import com.Flashgame.model.User;
import com.Flashgame.service.BoardService;

import jakarta.servlet.http.HttpSession;

@RestController
public class BoardApicontroller {
	
	@Autowired
	private BoardService boardService;
	
	@PostMapping("/api/board")
	public ResponseDto<Integer> save(@RequestBody BoardSaveDto request, Auth auth) {
		System.out.println("save 호출");
		boardService.Writeup(request, auth);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	@DeleteMapping("/api/board/{id}")
	public ResponseDto<Integer> deleteById(@PathVariable int id, Auth auth) {
		boardService.Delete(id, auth);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	@PutMapping("/api/board/{id}") // 요청하는 메소드가 다르기 때문에 주소가 같아도 괜찮!
	public ResponseDto<Integer> update(@PathVariable int id, @RequestBody Board board){
		boardService.Update(id, board);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
}