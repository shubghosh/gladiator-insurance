<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error_page.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- making imports for javascript, jquery, bootstrap -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/main.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>


<link rel="stylesheet" type="text/css"
	href="https://bootswatch.com/4/darkly/bootstrap.min.css">
<%-- <link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css"> --%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/stylesheet.css">

<title>Sage - Buy Policy</title>


</head>
<body>

	<%@include file="banner2.html"%>
	<!-- ribbon import -->
	<div class="content">

		<div class="row container-fluid">
			<!-- bootstrap magic sauce -->

			<form action="quote1.ins" method="post">

				<p id="dash-info" class="text-center"
					style="margin-top: 50px; width: 60%; margin-left: 20%; margin-right: 20%;">
					<b>Hi ${Customer.name}</b> <a href="pay.ins" id="quote">${Quote}</a>


				</p>
		</div>

		<div class="row container-fluid" style="margin-top: 30px;">


			<div class="text-center col-md">

				<h2>Regular Third-party Insurance</h2>
				<h4>Policy 1 info here</h4>
			</div>



			<div class="text-center col-md">

				<h2>Zero-depreciation Third Party Insurance</h2>
				<h4>Policy 2 info here</h4>

			</div>


			<div class="text-center col-md">

				<h2>Comprehensive Insurance</h2>
				<h4>Policy 3 info here</h4>

			</div>

		</div>



		<div class="row container-fluid" style="margin-top: 130px;">

			<div class="text-center col-md">



				<input type="text" name="registerNo"
					placeholder="Vehicle Registration Number" id="vnum"
					pattern="[a-zA-Z]{2}[0-9]{2}[a-zA-Z]{1,3}[0-9]{4}"
					title="Enter a valid registration number"> <br> <br>
				<br>
				<h3>Choose a Policy:</h3>
				<div class="form-group text-center"
					style="margin-left: 40%; width: 40%;">
					<select class="form-control text-center" id="ptype"
						name="policyType">
						<option value=ntp>Regular Third Party</option>
						<option value=zdtp>Zero-depreciation Third-party</option>
						<option value=cvp>Comprehensive Vehicle Policy</option>
					</select>
				</div>
				<br> <input type="submit" class="btn btn-success" name='submit'
					value="Get Quote!">



				<p style="text-align: center;">
				</form>
			</div>

		</div>
	</div>
	<%@include file="sharebuttons.html"%>
	<!-- social media share buttons component import -->

	<%@ include file="footer.html"%>
	<!-- footer import -->
</body>
</html>