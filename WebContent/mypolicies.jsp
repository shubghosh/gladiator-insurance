<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error_page.jsp"%>
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

<title>Sage - My Policies</title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body
	style="background-image: url(img/bg2.jpg); background-size: 100% 100%;">


	<%@include file="banner2.html"%>
	<!-- ribbon import -->

	<div class="content">

		<div class="row container-fluid">
			<!-- bootstrap magic sauce -->

			<div class="text-center cols-sm-6" id="cust-info"
				style="margin-left: 20%; width: 80%;">
				<b><h2>My Policies</h2></b> <br>

				<table>
					<tr>
						<td>Policy Id:</td>
						<td>Email:</td>
						<td>Vehicle registration Number</td>
						<td>Type of Policy</td>
					</tr>
					<c:forEach var="log" items="${InvoiceBean}">
						<tr>
							<td><c:out value="${log.policyId}" /></td>
							<td><c:out value="${log.customerId}" /></td>
							<td><c:out value="${log.registerNo}" /></td>
							<td><c:out value="${log.policyType}" /></td>
							<td><a href="generate.ins?policyId=${log.policyId}"
								class="btn btn-warning">Request Claim</a></td>
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