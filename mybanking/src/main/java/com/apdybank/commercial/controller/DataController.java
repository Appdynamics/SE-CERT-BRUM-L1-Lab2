package com.apdybank.commercial.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.apdybank.commercial.domain.Account;
import com.apdybank.commercial.util.ProcessingUtil;

@RestController
@RequestMapping("/data")
public class DataController {
	@RequestMapping(value = "/shipping-info", method = RequestMethod.GET)
	public ResponseEntity<?> shipping() {
		ProcessingUtil.process(1000, 4000);
		return new ResponseEntity<Account>(new Account("0", "shipping info"), HttpStatus.OK);
	}

	@RequestMapping(value = "/stocks-info", method = RequestMethod.GET)
	public ResponseEntity<?> stocksData() {
		ProcessingUtil.process(500, 500);
		return new ResponseEntity<Account>(new Account("0", "shipping info"), HttpStatus.OK);
	}
}
