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


<link href="https://fonts.googleapis.com/css?family=Chela+One"
	rel="stylesheet">


<title>Sage - User Dashboard</title>
</head>
<body
	style="background-image: url(img/bg2.jpg); background-size: 100% 100%;">

	<%@include file="banner2.html"%>
	<!-- ribbon import -->
	<div>
		<div class="content">

			<div class="row container-fluid">
				<!-- bootstrap magic sauce -->

				<p id="dash-info" class="text-center">
					<b><i>Welcome ${Customer.name}</b> <br> This is your personal
					dashboard.<br>Click on any Nav-bar button to proceed.</i>
				</p>

			</div>

		</div>
	</div>

	<%@include file="sharebuttons.html"%>
	<!-- social media share buttons component import -->

	<%@ include file="footer.html"%>
	<!-- footer import -->

</body>
</html>