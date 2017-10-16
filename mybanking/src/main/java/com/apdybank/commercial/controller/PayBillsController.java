package com.apdybank.commercial.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.apdybank.commercial.util.ProcessingUtil;

@Controller
public class PayBillsController {

	@RequestMapping("/pay-bills")
	public String index(Map<String, Object> model) {
		model.put("pageName", "Pay My Bills");
		model.put("cacheBuster", System.currentTimeMillis());
		
		ProcessingUtil.process(1000, 2000);
		
		return "pay-bills.jsp";
	}
	
	@RequestMapping("/resources/bills-style.css")
	public String css(Map<String, Object> model) {
		System.out.println("CSS controller");
		
		ProcessingUtil.process(2000, 5000);
		
		return "/bills.css";
	}

}