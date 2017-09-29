<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="/favicon.ico" rel="shortcut icon" />
<title>Statements - APDY Bank</title>

<jsp:include page="partials/resources.jsp" />

<script>
	$(function() {
		$("#tabs").tabs({
			activate : function(event, ui) {
				sendVPage(ui.newTab[0].textContent);
			}
		});
	});

	function sendVPage(vPageName) {
	  var _location = [location.protocol, '//', location.host, location.pathname].join('');

	  // Add the hash if not empty parameter
	  if (vPageName && vPageName.length > 0) {
	    _location = _location+"#"+vPageName;
	  }
	  //console.log("sendVPage: " + vPageName+", URL: "+_location);

	  var vPageView = new ADRUM.events.VPageView({
	    url : _location
	  });

	  vPageView.start();
	  vPageView.markViewChangeStart()
	  vPageView.markViewChangeEnd();
	  vPageView.markViewDOMLoaded();
	  vPageView.markXhrRequestsCompleted();
	  vPageView.end();

		if (typeof variable !== 'undefined') {
		  ADRUM.report(vPageView);
		}
	}
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
					<span>Account Statements</span>
				</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div id="tabs">
					<ul>
						<li><a href="#tabs-1">Monthly</a></li>
						<li><a href="#tabs-2">Yearly</a></li>
					</ul>
					<div id="tabs-1">
						<p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo
							a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet
							mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa
							et lorem. Mauris dapibus lacus auctor risus. Aenean tempor
							ullamcorper leo. Vivamus sed magna quis ligula eleifend
							adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum.
							Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede
							varius sollicitudin. Sed ut dolor nec orci tincidunt interdum.
							Phasellus ipsum. Nunc tristique tempus lectus.</p>
					</div>
					<div id="tabs-2">
						<p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus
							gravida ante, ut pharetra massa metus id nunc. Duis scelerisque
							molestie turpis. Sed fringilla, massa eget luctus malesuada,
							metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean
							aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit
							aliquam. Praesent in eros vestibulum mi adipiscing adipiscing.
							Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel
							metus. Ut posuere viverra nulla. Aliquam erat volutpat.
							Pellentesque convallis. Maecenas feugiat, tellus pellentesque
							pretium posuere, felis lorem euismod felis, eu ornare leo nisi
							vel felis. Mauris consectetur tortor et purus.</p>
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="partials/footer.jsp" />
	</div>
</body>
</html>
