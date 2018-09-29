package com.qst.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qst.model.User;
import com.qst.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	@RequestMapping("/login.do")
	public ModelAndView login(User user,HttpSession session){
		ModelAndView mv = new ModelAndView();
		session.setAttribute("username", user.getUsername());
		if(userService.login(user)){
			mv.setViewName("main");
			mv.addObject("user", user);
		}		
		return mv;
	}
}
