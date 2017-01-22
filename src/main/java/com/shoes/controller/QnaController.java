package com.shoes.controller;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shoes.domain.Qna;
import com.shoes.persistence.QnaDo;

@Controller
public class QnaController {
	@Inject
	QnaDo qnaDo;

	@RequestMapping(value = "/qna/list")
	public String qna(HttpServletRequest request,@RequestParam(value="num") int num) {
		List<Qna> lists = qnaDo.getLists(num==1?0:(num-1)*10);
		int pageNum=10;
		int maxList=5;
		int end=qnaDo.getCount();
		int listNum=(int)(Math.ceil(end/10.0));
		int listNumEnd=listNum>5?5:listNum;
		request.setAttribute("listNumEnd", listNumEnd);
		request.setAttribute("qna", lists);
		return "qna";
	}

	@RequestMapping(value = "/qna/validation")
	public void qnaValidation(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession(false);
		if (session.getAttribute("me") == null) {
			response.getWriter().print("fail");
		} else {
			response.getWriter().print("success");
		}
	}

	@RequestMapping(value = "/qna/register")
	public String qnaRegister(HttpServletRequest request,HttpServletResponse response) {

		return "register";
	}

	@RequestMapping(value = "/qna/register_ok", method = { RequestMethod.POST })
	public String qnaRegisterOk(Qna qna) {
		qnaDo.qnaRegister(qna);
		return "qna";
	}

	@RequestMapping(value = "/qna/article")
	public String qnaList(@RequestParam(value = "num") String num, HttpServletRequest request) {
	
		Qna qna = qnaDo.getList(Integer.parseInt(num));
		request.setAttribute("qna", qna);
		return "article";
	}
	
	//@RequestMapping(value="")

}
