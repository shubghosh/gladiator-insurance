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

<title>Sage - Claim Status</title>


<script>
	function disable() {
		console.log("running");
		window.location.href = "home.jsp";
	}
</script>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body
	style="background-image: url(img/bg2.jpg); background-size: 100% 100%;">


	<%@include file="banner2.html"%>
	<!-- ribbon import -->
	<div class="content">



		<table id="login-form" style="margin-left: 15%;">
			<tr>
				<td colspan="4" style="text-align: center;">Hi. These are your
					claim requests.<br>Please be patient with your request. We are
					working hard to resolve your issues.
				</td>
			<tr>
				<td>Ticket Id</td>
				<td>Policy Id</td>
				<td>Status</td>
				<td>Customer Id</td>
			</tr>

			<c:forEach var="log" items="${PolicyId}">
				<tr>
					<td>${log.ticketId}</td>
					<td>${log.policyId}</td>
					<td>${log.status}</td>
					<td>${log.raisedBy}</td>
				</tr>
			</c:forEach>
		</table>

	</div>


	<%@include file="sharebuttons.html"%>
	<!-- social media share buttons component import -->

	<%@ include file="footer.html"%>
	<!-- footer import -->
</body>
</html>