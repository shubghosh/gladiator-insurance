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

<title>Sage - View Customer Detail</title>
</head>
<body>

	<%@include file="banner3.html"%>
	<!-- ribbon import -->

	<div class="content">


		<form action="ticket.jsp" method="post">

			<div>
				<table id="signup-form" style="margin-left: 5%; width: 90%">
					<tr>
						<td colspan="7" style="text-align: center; ">Customer
							details: ${Users.name}</td>
					</tr>
					<tr>
						<td><b>Aadhaar No.</b></td>
						<td><b>Name</b></td>
						<td><b>Phone no.</b></td>
						<td><b>Gender</b></td>
						<td><b>Address</b></td>
						<td><b>Father's name</b></td>
					</tr>
					<tr>
						<td>${ Users.aadhar }</td>
						<td>${ Users.name }</td>
						<td>${ Users.phone }</td>
						<td>${ Users.gender }</td>
						<td>${ Users.address }</td>
						<td>${ Users.f_Name }</td>
						<td><a href="tickets.ins" class="btn btn-outline-success">Show
								Ticket</a></td>
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