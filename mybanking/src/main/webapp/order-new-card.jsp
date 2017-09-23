<!DOCTYPE HTML>
<html ng-app="newCardApp">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="/favicon.ico" rel="shortcut icon" />
<title>New Card - APDY Bank</title>

<jsp:include page="partials/resources.jsp" />

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.5/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.5/angular-resource.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.5/angular-route.min.js"></script>
    
<script src="/js/order-new-card.js" type="text/javascript" charset="UTF-8" ></script>

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
					<span>Order a New Card</span>
				</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div ng-view></div>
			</div>
		</div>
		
		<jsp:include page="partials/footer.jsp" />
	</div>
</body>
</html>