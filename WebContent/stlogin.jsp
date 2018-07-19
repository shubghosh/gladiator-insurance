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
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/stylesheet.css">

<title>Sage - Staff Login</title>
</head>
<body>

	<%@include file="banner.html"%>
	<!-- ribbon import -->
	<div class="content">



		<form action="staff.ins" method="post">
			<table id="login-form">

				<td>Enter your Email:</td>
				<td><input type="text" id="email" name="staffEmail"
					pattern="[a-zA-Z0-9]{4,}@sage.com"
					title="You can login only with a valid staff email"
					placeholder="Email Id" required></td>
				</tr>
				<tr>
					<td>Enter your password:</td>
					<td><input type="password" id="pass" name="staffPassword"
						placeholder="password" required></td>
				</tr>
				<tr>

					<td style="align: center;"><button type="submit" name="submit"
							value="Log in" class="btn btn-success" >Log in</button></td>
				</tr>
			</table>
		</form>

		<div
			style="margin-top: 10px; margin-left: 45%; margin-right: 20%; width: 60%">
			<img src="img/staff.png" style="height: 20%; width: 20%;">
		</div>


	</div>


	<%@include file="sharebuttons.html"%>
	<!-- social media share buttons component import -->

	<%@ include file="footer.html"%>
	<!-- footer import -->
</body>
</html>