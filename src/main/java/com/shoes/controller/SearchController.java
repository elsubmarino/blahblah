package com.shoes.controller;

import java.util.List;

import java.util.List;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shoes.domain.ShoesMain;
import com.shoes.persistence.SearchDo;

@Controller
public class SearchController {
	@Inject
	SearchDo searchDo;
	@RequestMapping(value="/search")
	public String search(HttpServletRequest request){	
		String title=request.getParameter("title");
		System.out.println(title);
		List<ShoesMain> shoes=searchDo.searchIt(title);
		request.setAttribute("shoes", shoes);
		return "search";
	}
	
}
