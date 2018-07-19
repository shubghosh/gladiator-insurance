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

<%-- <link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css"> --%>

<link rel="stylesheet" type="text/css"
	href="https://bootswatch.com/4/darkly/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/stylesheet.css">

<title>Aadhaar check-in</title>
</head>
<body>

	<%@include file="banner.html"%>
	<!-- ribbon import -->

	<div class="content">



		<p id="callback-text">
		<div id="uid">

			<form action="signup.ins" method="post">

				<table id="contact-form">

					<br>
					<br>
					<br>
					<br>
					<tr><td colspan="2" style="color: red; text-align: center; font-weight: default;">${invalid}</td></tr>

					<tr>
						<td>Please enter your Aadhaar number:</td>
						<td><input type="text" id="adh" name="aadhar"
							placeholder="12-digit Aadhaar number" pattern="[0-9]{12}"
							required title="Only 12-digit aadhaar number is allowed">
						</td>
					</tr>
					<tr>
						<td></td>
					</tr>
					<tr>
						<td style="text-align: center" colspan="2"><input
							type="submit" name="submit" value="Check" class="btn btn-info"></td>
					</tr>
				</table>
			</form>


		</div>
	</div>
	<%@include file="sharebuttons.html"%>
	<!-- social media share buttons component import -->

	<%@ include file="footer.html"%>
	<!-- footer import -->
</body>
</html>