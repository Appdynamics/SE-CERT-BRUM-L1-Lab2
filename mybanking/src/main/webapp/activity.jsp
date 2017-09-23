<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="/favicon.ico" rel="shortcut icon" />
<title>Activity - APDY Bank</title>

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
					<span>Recent Activity</span>
				</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<table id="activityTable" class="table table-striped table-bordered table-hover">
					<thead class="thead-inverse">
						<tr>
							<th>Date</th>
							<th>Description</th>
							<th>Amount</th>
						</tr>
					</thead>
					<tbody>
						<tr scope="row">
							<td>Sept 1st</td>
							<td>Netflix</td>
							<td>$9.99</td>
						</tr>
						<tr scope="row">
							<td>Sept 3rd</td>
							<td>Joe's Deli</td>
							<td>$8.99</td>
						</tr>
						<tr scope="row">
							<td>Sept 6th</td>
							<td>Amazon.com</td>
							<td>$100.01</td>
						</tr>
						<tr scope="row">
							<td>Sept 6th</td>
							<td>Super Cleaners</td>
							<td>$42.32</td>
						</tr>
						<tr scope="row">
							<td>Sept 9th</td>
							<td>Grocery Store</td>
							<td>$102.09</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		
		<jsp:include page="partials/footer.jsp" />
	</div>
</body>
</html>