<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error_page.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- making imports for javascript, jquery, bootstrap -->
<script src="<%=request.getContextPath()%>/js/main.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>

<%-- <link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css"> --%>

<link rel="stylesheet" type="text/css"
	href="https://bootswatch.com/4/darkly/bootstrap.min.css">



<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/stylesheet.css">

<title>Sage - Portal Landing Page</title>


<%@include file="banner.html"%>
<!-- ribbon import -->

</head>

<body background="img/tab-bg.jpg">

	<div class="content">
		<div class="row container-fluid">
			<!-- bootstrap magic sauce -->



			<div class=col-sm-9>


				<div id="quote1">
					<h2 style="margin-top: 120px;">Get a quick quote for your
						ride!</h2>
					<br> <br> <br> <br>
					<h3>Vehicle Registration Number:</h3>
					<h6>

						<div class=col-sm-6>
							<form action="quote.ins" method="post">
								<input type="text" name="registerNo"
									placeholder="Vehicle Registration Number" id="vnum"
									pattern="[a-zA-Z]{2}[0-9]{2}[a-zA-Z]{1,3}[0-9]{4}"
									title="Enter a valid registration number" required>
								<table id="quote">
									<tr>
										<td style="color: red;">${VehicleNotFound}</td>
									</tr>
									<tr>
										<td>Choose a Policy:</td>
									</tr>

									<tr>
										<td>
											<div class="form-group col-sm-8">
												<select class="form-control" id="ptype" required
													name=policyType>
													<option value=ntp>Regular Third Party</option>
													<option value=zdtp>Zero-depreciation Third-party</option>
													<option value=cvp>Comprehensive Vehicle Policy</option>
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<td style="text-align: center;"><button
												class="btn btn-outline-success">Get a quick quote!</button></td>
									</tr>
									<tr>
										<td style="text-align: center;"><a href="login1.jsp"
											id="quote">${Quote}</a></td>
									</tr>


								</table>

							</form>
						</div>

					</h6>

				</div>

			</div>


			<div class="col-md-3">
				<!-- news feed div -->

				<%@include file="newsfeed.html"%>
				<!-- news feed component import -->
			</div>

			<div class="row container-fluid" style="margin-top: 50px;">


				<div class="col-sm text-center">

					<h3 style="text-align: left;">One of the highest performing
						assets in Insurance Domain</h3>
					<i> -NDTV Profit</i>


				</div>

				<div class="col-sm text-center">

					<h3 style="text-align: left;">The country's most reliable
						insurance provider!</h3>
					<i> -ABP News Awards</i>
				</div>
				<div class="col-sm text-center">

					<h3 style="text-align: left;">Remarkable Customer Service</h3>
					<i> -XYZ Consumer Group</i>

				</div>
				<div class="col-sm text-center">

					<h3 style="text-align: left;">Excellent Policies And Services</h3>
					<i> -The Dalal Street</i>
				</div>


			</div>
		</div>

	</div>

	<%@include file="sharebuttons.html"%>
	<!-- social media share buttons component import -->

	<%@ include file="footer.html"%>
	<!-- footer import -->


</body>
</html>