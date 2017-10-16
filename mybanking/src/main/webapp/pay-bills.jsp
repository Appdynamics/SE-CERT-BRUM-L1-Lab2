<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="/favicon.ico" rel="shortcut icon" />
<title>Pay Bills - APDY Bank</title>

<jsp:include page="partials/resources.jsp" />
<link rel="stylesheet" href="/resources/bills-style.css?v=${cacheBuster}" />

</head>
<body>
	<jsp:include page="partials/header.jsp" />

	<div class="container">
		<div class="row">
			<div class="col-md-12">&nbsp;</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h1 class="display-3">
					<span>Pay Your Bill</span>
				</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<form>
					<div class="form-group">
						<label for="select">Credit Card</label>
						<select id="select" class="form-control form-control-lg">
						  <option>MasterCard Cash Rewards ***9384</option>
						  <option>Visa Travel Rewards ****8375</option>
						  <option>Visa Business Card ****1326</option>
						</select>
					</div>
					<div class="form-group">
						<label for="amount">Amount</label>
						<input type="text" class="form-control form-control-lg" id="amount" placeholder="$100">
					</div>
					<button type="submit" class="btn btn-primary btn-lg">Submit</button>
				</form>
			</div>
		</div>

		<jsp:include page="partials/footer.jsp" />
	</div>
</body>
</html>