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

<title>Sage - Verify OTP</title>


<script>
	/* function disable() {
		window.location.href = "forgot.jsp";
	} */
</script>
</head>

<body>

	<%@include file="banner.html"%>
	<!-- ribbon import -->
	<div class="content">



		<form action="otp.ins" method="post">
			<table id="login-form">
				<tr>
					<td colspan="2" style="text-align: center;">Enter 4 digit code
						sent to your mobile no</td>
				<tr>
					<td>Enter OTP:</td>
					<td><input type="text" id="otp" name="otp" pattern="[0-9]{4}"
						title="Invalid OTP" placeholder="Enter OTP" required></td>
				</tr>

				<tr>
					<td><button type="submit" name="submit" value="otp"
							class="btn btn-success">Verify</button></td>
				</tr>
			</table>
		</form>




	</div>


	<%@include file="sharebuttons.html"%>
	<!-- social media share buttons component import -->

	<%@ include file="footer.html"%>
	<!-- footer import -->
</body>
</html>