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

<title>Sage - View Tickets</title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>

	<%@include file="banner3.html"%>
	<!-- ribbon import -->

	<div class="content">

		<div class="row container-fluid">
			<!-- bootstrap magic sauce -->

			<div class="text-center" id="cust-info"
				style="width: 95%; margin-left: 5%;">
				<b><h2>Raised Ticket Details</h2></b><br>


				<table>
					<tr>
						<td>Ticket Id</td>
						<td>Policy Id</td>
						<td>Status</td>`
						<td>Issue</td>
						<td>Raised By</td>
					</tr>

					<c:forEach var="log" items="${Tickets}">
						<tr>
							<td><c:out value="${log.ticketId}" /></td>
							<td><c:out value="${log.policyId}" /></td>
							<td><input id="id" name="statusId" value="${log.status}"
								pattern="{0-1}" /></td>
							<%-- <td><c:out value="${log.status}" /></td> --%>
							<td><c:out value="${log.problem}" /></td>
							<td><c:out value="${log.raisedBy}" /></td>
							<td><a href="customerDetails.ins?email=${log.raisedBy}"
								class="btn btn-outline-success">Fetch Details</a></td>
							<td><a href=""
								onclick="this.href='updateStatus.ins?ticketId=${log.ticketId}&status=' +document.getElementById('id').value"
								class="btn btn-outline-warning">Change Status</a></td>
						</tr>
					</c:forEach>
				</table>



			</div>

		</div>

		<%@include file="sharebuttons.html"%>
		<!-- social media share buttons component import -->

		<%@ include file="footer.html"%>
		<!-- footer import -->
</body>
</html>