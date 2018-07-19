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

<title>Sage - Payment Page</title>
</head>
<body
	style="background-image: url(img/bg2.jpg); background-size: 100% 100%;">


	<%@include file="banner2.html"%>
	<!-- ribbon import -->
	<div>
		<div class="content">

			<div class="row container-fluid">
				<!-- bootstrap magic sauce -->

				<p id="dash-info" class="text-center" style="margin-top: 50px;">
					<b>Payment Page</b> 
				</p>
				<form action="pay.ins" method="post">
				<table id="signup-form">
					<tr>
						<td colspan="2" style="text-align: center;"></td>
					</tr>
					<tr>
						<td><b>Credit/Debit Card No:</b></td>
						<td><input type="text" name="credit" pattern="[0-9]{16}" title="Please enter only 12-digit number" required></td>
					</tr>
					<tr>
						<td><b>Expiry Month/Year:</b></td>
						<td><input type="date" name="expyear" required ></td>
					</tr>
					<tr>
						<td><b>CVV:</b></td>
						<td> <input type="text" name="cvv" pattern="[0-9]{3}" title="Please enter only 3 digit number" required></td>
					</tr>
					<tr>
						<td><b>Amount:</b></td>
						<td> <input type="text" name="amount" value = ${ Premium } readonly ></td>
					</tr>

					<tr>
						<td style="text-align: center" colspan="2"><input
							type="submit" name="submit" value="Make Payment"
							class="btn btn-success" ></td>
					</tr>
				</table>

			</div>

		</div>
	</div>

	<%@include file="sharebuttons.html"%>
	<!-- social media share buttons component import -->

	<%@ include file="footer.html"%>
	<!-- footer import -->

</body>
</html>