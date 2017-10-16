<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="/favicon.ico" rel="shortcut icon" />
<title>Home - APDY Bank</title>

<jsp:include page="partials/resources.jsp" />

<script src="/js/home.js" type="text/javascript" charset="UTF-8" ></script>

<script type="application/javascript" charset="UTF-8">
	$(document).ready(function() {
	  loadData();
	});
</script>

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
					<span>Welcome to My Account</span>
				</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<section>
					<p>Loading lots of account profile data:</p>
					<ul>
						<li>Credit cards</li>
						<li>Bank accounts</li>
						<li>Loans</li>
						<li>Activity</li>
						<li>Statements</li>
						<li>Transfers</li>
					</ul>
				</section>
			</div>
		</div>
		
		<jsp:include page="partials/footer.jsp" />
	</div>
</body>
</html>