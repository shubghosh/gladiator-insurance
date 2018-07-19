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

<title>Sage - Raise Ticket</title>
</head>
<body
	style="background-image: url(img/bg2.jpg); background-size: 100% 100%;">

	<%@include file="banner3.html"%>
	<!-- ribbon import -->

	<div class="content">


		<form action="dashboard.jsp" method="post">

			<div>
				<table id="signup-form" style="margin-left: 0%;">
					<tr>
						<td colspan="2" style="text-align: center;"><b>Ticket
								details for: ${name}</b></td>
					</tr>

					<tr>
						<td colspan="2" style="text-align: center;"><b>Ticket
								no.: ${name}</b></td>
					</tr>

					<tr>
						<td><b>Aadhaar No.:</b></td>
						<td>abc ${ User.aadhar }</td>
					</tr>
					<tr>
						<td><b>Name:</b></td>
						<td>${ User.name }</td>
					</tr>
					<tr>
						<td><b>Phone no.:</b></td>
						<td>${ User.phone }</td>
					</tr>
					<tr>
						<td><b>Gender:</b></td>
						<td>${ User.gender }</td>
					</tr>
					<tr>
						<td><b>Address:</b></td>
						<td>${ User.address }</td>
					</tr>
					<tr>
						<td><b>Father's name:</b></td>
						<td>${ User.f_Name }</td>
					</tr>



					<tr>
						<td><b>Email:</b></td>
						<td>${email}</td>
					</tr>

					<tr>
						<td></td>
						<td class="message1" id="message1"></td>
					</tr>



					<tr>
						<td style="text-align: center" colspan="2"><input
							type="submit" name="submit" value="Back to home"
							class="btn btn-info"></td>
					</tr>
				</table>
			</div>
		</form>


	</div>

	<%@include file="sharebuttons.html"%>
	<!-- social media share buttons component import -->

	<%@ include file="footer.html"%>
	<!-- footer import -->
</body>
</html>