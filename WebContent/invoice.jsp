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

<title>Sage - Purchase Details</title>
</head>


<body
	style="background-image: url(img/bg2.jpg); background-size: 100% 100%;">


	<%@include file="banner2.html"%>
	<!-- ribbon import -->

	<div class="content">


		<form action="register.ins" method="post">

			<!-- <div class="form-group required"> -->
			<label class="control-label">

				<table id="signup-form" style="margin-left: 300px;">
					<tr>
						<td colspan="2" style="text-align: center;"></td>
					</tr>
					<tr>
						<td><b>Policy Id:</b></td>
						<td><input type="text" name="pid"
							value="${ Invoice.policyId }" readonly></td>
					</tr>
					<tr>
						<td><b>Registration No.:</b></td>
						<td><input type="text" name="rno"
							value="${ Invoice.registerNo }" readonly></td>
					</tr>
					<%-- <tr>
						<td><b>Date:</b></td>
						<td><input type="date" name="date" value="${ User.name }" readonly></td>
					</tr> --%>
					<tr>
						<td><b>Amount:</b></td>
						<td><input type="text" name="amount"
							value="${ Invoice.amount }" readonly></td>
					</tr>
					<tr>
						<td><b>Customer Id:</b></td>
						<td><input type="text" name="cid" readonly
							value="${ Invoice.customerId }"></td>
					</tr>



					<tr>
						<td colspan="2" style="text-align: center"><a href="pdf.ins"
							class="btn btn-info">View Receipt</a></td>

						
					</tr>
				</table>
			</label>
		</form>


	</div>

	<%@include file="sharebuttons.html"%>
	<!-- social media share buttons component import -->

	<%@ include file="footer.html"%>
	<!-- footer import -->
</body>
</html>