package com.shoes.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shoes.domain.ShoesMain;
import com.shoes.persistence.ProductDo;

@Controller
public class ProductController {
	
	
	@Inject
	ProductDo productDo;
	
	@RequestMapping(value="/view")
	public String test(@RequestParam(value="num") int num,HttpServletRequest request){
		ShoesMain shoesMain =productDo.showMeTheProduct(num); 
		request.setAttribute("shoe", shoesMain);
		return "view";
	}
}
