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

<title>Sage - Terms And Conditions</title>
</head>
<body>
	<%@include file="banner.html"%>
	<!-- ribbon import -->

	<div class="content">


		<div class="row container-fluid">
			<!-- bootstrap magic sauce -->
			<!-- <p id="contact-info"> -->

			<table id="con" style="text-align: center; margin-top: 50px;">

				<tr>
					<th colspan="2">Our terms and conditions of service</th>
				</tr>
				<tr>
					<td colspan="2" id="terms">You agree to share your data with
						us</td>
				</tr>

				<tr>
					<td colspan="2" id="terms">We will not share your data with
						third-party advertisers</td>

				</tr>
				<tr>
					<td colspan="2" id="terms">We will not share your personal
						information with any other organization</td>

				</tr>
				<tr>
					<td colspan="2" id="terms">Any legal discourse will be subject
						to Mumbai courts only</td>
				</tr>

			</table>

		</div>

	</div>

	<%@include file="sharebuttons.html"%>
	<!-- social media share buttons component import -->

	<%@ include file="footer.html"%>
	<!-- footer import -->

</body>
</html>