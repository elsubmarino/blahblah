package com.shoes.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnaController {
	@RequestMapping(value="/qna/validation")
	public void qnaValidation(HttpServletRequest request,HttpServletResponse response) throws IOException{
		HttpSession session=request.getSession(false);
		if(session.getAttribute("me")==null){
			response.getWriter().print("fail");
		}else{
			response.getWriter().print("success");
		}
	}
	
	@RequestMapping(value="/qna/register")
	public String qnaRegister(){
		return "register";
	}
}
