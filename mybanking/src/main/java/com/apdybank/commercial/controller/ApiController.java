package com.apdybank.commercial.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.apdybank.commercial.domain.Account;
import com.apdybank.commercial.util.ProcessingUtil;

@RestController
@RequestMapping("/api")
public class ApiController {
	private Account account = new Account();

	@RequestMapping(value = "/accounts", method = RequestMethod.GET)
	public ResponseEntity<Account> listAllAccounts() {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(account, HttpStatus.OK);
	}

	@RequestMapping(value = "/account/{id}", method = RequestMethod.GET)
	public ResponseEntity<?> getAccount(@PathVariable("id") String id) {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account(id, "account id " + id), HttpStatus.OK);
	}

	@RequestMapping(value = "/account/{id}/update", method = RequestMethod.GET)
	public ResponseEntity<?> accountUpdate(@PathVariable("id") String id) {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account(id, "update " + id), HttpStatus.OK);
	}

	@RequestMapping(value = "/account/creditcard/pay-to-account", method = RequestMethod.GET)
	public ResponseEntity<?> ccPayToAccount() {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account("0", "pay-to-account"), HttpStatus.OK);
	}

	@RequestMapping(value = "/account/creditcard/pay-from-account", method = RequestMethod.GET)
	public ResponseEntity<?> payFromAccount() {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account("0", "pay-from-account"), HttpStatus.OK);
	}

	@RequestMapping(value = "/account/creditcard/payment-activity", method = RequestMethod.GET)
	public ResponseEntity<?> paymentActivity() {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account("0", "payment activity"), HttpStatus.OK);
	}

	@RequestMapping(value = "/account/creditcard", method = RequestMethod.GET)
	public ResponseEntity<?> cc() {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account("0", "cc"), HttpStatus.OK);
	}

	@RequestMapping(value = "/account/creditcard/{id}", method = RequestMethod.GET)
	public ResponseEntity<?> ccId(@PathVariable("id") String id) {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account(id, "updating " + id), HttpStatus.OK);
	}

	@RequestMapping(value = "/account/creditcard/{id}/statements", method = RequestMethod.GET)
	public ResponseEntity<?> ccStatements(@PathVariable("id") String id) {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account(id, "statement " + id), HttpStatus.OK);
	}

	@RequestMapping(value = "/account/creditcard/{id}/paymentActivity", method = RequestMethod.GET)
	public ResponseEntity<?> ccPayments(@PathVariable("id") String id) {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account(id, "pay " + id), HttpStatus.OK);
	}

	@RequestMapping(value = "/account/creditcard/{id}/update", method = RequestMethod.GET)
	public ResponseEntity<?> ccUpdate(@PathVariable("id") String id) {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account(id, "update " + id), HttpStatus.OK);
	}

	@RequestMapping(value = "/one-time-payment-properties", method = RequestMethod.GET)
	public ResponseEntity<?> getUpdateAccount() {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account("0", "one time "), HttpStatus.OK);
	}

	@RequestMapping(value = "/bank/{id}", method = RequestMethod.GET)
	public ResponseEntity<?> bankId(@PathVariable("id") String id) {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account(id, "bank " + id), HttpStatus.OK);
	}

	@RequestMapping(value = "/bank/{id}/transfers", method = RequestMethod.GET)
	public ResponseEntity<?> bankXfers(@PathVariable("id") String id) {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account(id, "bank xfer " + id), HttpStatus.OK);
	}

	@RequestMapping(value = "/bank/{id}/transfers/{txId}", method = RequestMethod.GET)
	public ResponseEntity<?> bank(@PathVariable("id") String id, @PathVariable("txId") String txId) {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account(id, "bank id xfer " + id), HttpStatus.OK);
	}

	@RequestMapping(value = "/loans", method = RequestMethod.GET)
	public ResponseEntity<?> loans() {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account("0", "loan"), HttpStatus.OK);
	}

	@RequestMapping(value = "/loans/{id}", method = RequestMethod.GET)
	public ResponseEntity<?> loanDetails(@PathVariable("id") String id) {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account(id, "loan tx detail " + id), HttpStatus.OK);
	}

	@RequestMapping(value = "/loans/{id}/details/{txId}/detail", method = RequestMethod.GET)
	public ResponseEntity<?> loanTxDetails(@PathVariable("id") String id, @PathVariable("txId") String txId) {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account(id, "loan tx detail " + id), HttpStatus.OK);
	}

	@RequestMapping(value = "/loans/{id}/detail/{txId}/{secureId}/personalInfo/{pId}", method = RequestMethod.GET)
	public ResponseEntity<?> loan(@PathVariable("id") String id, @PathVariable("txId") String txId,
			@PathVariable("secureId") String secureId, @PathVariable("pId") String pId) {
		ProcessingUtil.process(10, 100);
		return new ResponseEntity<Account>(new Account(id, "loan personal tx detail " + id), HttpStatus.OK);
	}
}
