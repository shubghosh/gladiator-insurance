<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error_page.jsp" %>
<%@page import="java.util.List"%>
<%@page import="lti.insurance.bean.ExistingCustomerBean"%>
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

<title>Portal Landing Page</title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>

	<%@include file="banner3.html"%>
	<!-- ribbon import -->

	<div class="content">

		<div class="row container-fluid">
			<!-- bootstrap magic sauce -->

			<div class="text-center cols-sm" id="cust-info"
				style="margin-left: 5%; width: 95%;">
				<h2>
					<b>Customer Details</b>
				</h2>
				<br>

				<table>
					<tr>
						<td>Customer Policy Id</td>
						<td>Customer Email</td>
					</tr>
					<c:forEach var="log" items="${Customer}">
						<tr>
							<td><c:out value="${log.policyId}" /></td>
							<%-- <td><c:out value="${log.ticketId}" /></td>
							<td><c:out value="${log.claimStatus}" /></td> --%>
							<td><c:out value="${log.email}" /></td>
							<td><a href="customerDetails.ins?email=${log.email}"
								class="btn btn-warning">Retrieve information</a></td>
						</tr>
					</c:forEach>
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