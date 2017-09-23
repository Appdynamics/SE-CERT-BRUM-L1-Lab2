package com.apdybank.commercial.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StatementsController {

	@RequestMapping("/statements")
	public String index(Map<String, Object> model) {
		model.put("pageName", "My Statements");
		return "statements.jsp";
	}

}