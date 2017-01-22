package com.shoes.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoes.domain.Users;
import com.shoes.persistence.MemberDo;

@Controller
public class MainController {
	@Inject
	MemberDo memberDo;
	
	@RequestMapping(value="/")
	public String main(HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");
		return "home";
	}
	
	@RequestMapping(value="/help")
	public String help(){
		return "help";
	}
	
	
	@RequestMapping(value="/men")
	public String men(){
		return "men";
	}
	
	@RequestMapping(value="/intro")
	public String intro(){
		return "intro";
	}
	
	@RequestMapping(value="/member/join",method={RequestMethod.POST})
	public void findUser(Users user,HttpServletResponse response) throws Exception{
		if(memberDo.findUser(user.getEmail())){
			response.getWriter().print("fail");
			return;
		}
		memberDo.insertUser(user);
		
	}
	
	@RequestMapping(value="/member/login",method={RequestMethod.POST})
	public void login(Users user,HttpServletRequest request,HttpServletResponse response) throws IOException{
		Users me=(Users)memberDo.isItCorrect(user);
		if(me==null){
			response.getWriter().print("fail");
			return;
		}
		HttpSession session=request.getSession(false);
		session.setAttribute("me", me);
		response.getWriter().print("success");
	}
	@RequestMapping(value="/member/logout")
	public void logout(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		HttpSession session=request.getSession();
		session.invalidate();
		
	}
	
	@RequestMapping(value="/member/cart")
	public String cart(){
		return "cart";
	}
}
