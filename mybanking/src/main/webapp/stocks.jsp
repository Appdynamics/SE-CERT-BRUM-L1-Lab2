<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="/favicon.ico" rel="shortcut icon" />
<title>Stocks - APDY Bank</title>

<jsp:include page="partials/resources.jsp" />

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
					<span>Stock Research</span>
				</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-md-6">
				<iframe src="/stocks/csco" width="400" height="200"></iframe>
			</div>
			<div class="col-md-6">
				<iframe src="/stocks/info" width="400" height="200"></iframe>
			</div>
		</div>
		
		<jsp:include page="partials/footer.jsp" />
	</div>
</body>
</html>