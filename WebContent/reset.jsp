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

<title>Sage - Reset Password</title>

</head>

<body>

	<%@include file="banner.html"%>
	<!-- ribbon import -->
	<div class="content">



		<form action="update.ins" method="post">
			<table id="login-form">
				<tr>
					<td colspan="2" style="text-align: center;">Enter your new
						password here!</td>
				<tr>
					<td>New password:</td>
					<td><input type="password" id="cpass1" name="password"
						pattern=".{6,}" title="Enter a valid password of minimum 6 digits"
						placeholder="Enter password " required></td>
				</tr>
				<tr>
					<td>Confirm new password:</td>
					<td><input type="password" id="cpass2" name="password1"
						pattern=".{6,}" onkeyup="validate1(); return false;"
						title="Enter a valid password of minimum 6 digits"
						placeholder="Confirm password" required></td>
					<span id="confirmMessage" class="confirmMessage"></span>
				</tr>


				<tr>
					<td></td>
					<td class="message1" id="message1"></td>
				</tr>
				<td><button type="submit" name="submit" value="submit"
						class="btn btn-success">Submit</button></td>
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