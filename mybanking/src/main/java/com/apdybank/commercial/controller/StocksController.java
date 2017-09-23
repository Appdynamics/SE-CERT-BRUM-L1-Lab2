package com.apdybank.commercial.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.apdybank.commercial.domain.Stock;

@Controller
public class StocksController {

	@RequestMapping("/stocks")
	public String index(Map<String, Object> model) {
		model.put("pageName", "Stock Research");
		return "stocks.jsp";
	}

	@RequestMapping("/stocks/csco")
	public String csco(Map<String, Object> model) {
		return "/stocks-csco.jsp";
	}

	@RequestMapping("/stocks/appd")
	public String appd(Map<String, Object> model) {
		return "/stocks-appd.jsp";
	}

	@RequestMapping("/stocks/info")
	public @ResponseBody Stock info(Map<String, Object> model) {
		return new Stock("GOOG", 932.96);
	}

}