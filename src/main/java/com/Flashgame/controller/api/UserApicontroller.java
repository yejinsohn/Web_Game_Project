package com.Flashgame.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.Flashgame.domain.Auth;
import com.Flashgame.dto.ResponseDto;
import com.Flashgame.model.RoleType;
import com.Flashgame.model.User;
import com.Flashgame.service.UserService;

import jakarta.servlet.http.HttpSession;

@RestController
public class UserApicontroller {
	
	@Autowired
	private UserService userservice;
	
	@PostMapping("/api/user/signup")
	public ResponseDto<Integer> save(@RequestBody User user) {
		System.out.println("save 호출");
		user.setRole(RoleType.USER);
		userservice.Signup(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	@PostMapping("/api/user/login")
	public ResponseDto<Integer> login(@RequestBody User user, HttpSession session) {
		System.out.println("login 호출");
		User principal = userservice.Login(user);
		
		if(principal != null) {
			Auth auth = Auth.builder().userId(principal.getId()).build();
			session.setAttribute("auth", auth);
		} 
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
}