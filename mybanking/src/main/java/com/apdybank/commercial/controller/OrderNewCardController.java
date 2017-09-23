package com.apdybank.commercial.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderNewCardController {

	@RequestMapping("/order-new-card")
	public String index(Map<String, Object> model) {
		model.put("pageName", "Order a New Card");
		return "order-new-card.jsp";
	}

}