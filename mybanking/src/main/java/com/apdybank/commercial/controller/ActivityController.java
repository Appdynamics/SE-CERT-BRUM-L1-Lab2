package com.apdybank.commercial.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.apdybank.commercial.util.ProcessingUtil;

@Controller
public class ActivityController {

	@RequestMapping("/activity")
	public String index(Map<String, Object> model) {
		model.put("pageName", "Recent Activity");
		
		ProcessingUtil.process(4000, 6000);
		
		return "activity.jsp";
	}

}