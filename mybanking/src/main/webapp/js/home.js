function loadData() {
	console.log("Loading data...");

	for (var i = 0; i < 1; i++) {
		jQuery.ajax("/api/accounts");
		jQuery.ajax("/api/account/" + guid() + "/");
		jQuery.ajax("/api/account/" + guid() + "/update");
		jQuery.ajax("/api/account/creditcard/pay-to-account");
		jQuery.ajax("/api/account/creditcard/pay-from-account");
		jQuery.ajax("/api/account/creditcard/payment-activity");
		jQuery.ajax("/api/account/creditcard");
		jQuery.ajax("/api/account/creditcard/" + guid());
		jQuery.ajax("/api/account/creditcard/" + guid() + "/statements");
		jQuery.ajax("/api/account/creditcard/" + guid() + "/paymentActivity");
		jQuery.ajax("/api/account/creditcard/" + guid() + "/update");
		jQuery.ajax("/api/one-time-payment-properties");
		jQuery.ajax("/api/bank/" + guid());
		jQuery.ajax("/api/bank/" + guid() + "/transfers");
		jQuery.ajax("/api/bank/" + guid() + "/transfers/" + guid());
		jQuery.ajax("/api/loans");
		jQuery.ajax("/api/loans/" + guid());
		jQuery.ajax("/api/loans/" + guid() + "/details/" + guid() + "/detail");
		jQuery.ajax("/api/loans/" + guid() + "/detail/" + guid() + "/" + guid()
				+ "/personalInfo/" + guid());
		jQuery.ajax("http://jsonplaceholder.typicode.com/posts");
		jQuery.ajax("http://jsonplaceholder.typicode.com/users");
	}
}

function guid() {
	function s4() {
		return Math.floor((1 + Math.random()) * 0x10000).toString(16)
				.substring(1);
	}
	return s4() + s4() + '-' + s4() + '-' + s4() + '-' + s4() + '-' + s4()
			+ s4() + s4();
}