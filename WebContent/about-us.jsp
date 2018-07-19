<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"  errorPage="error_page.jsp"%>
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

<title>Sage - About us</title>
</head>
<body>

	<%@include file="banner.html"%>
	<!-- ribbon import -->
	
	<div class="content">

		<div class="row container-fluid">
			<!-- bootstrap magic sauce -->
	
			 <p id="ab-info" class="text-center"> 
			 <b>Who are we?</b>
			 <br><p class=.text-center id="ab-us">We are a group of individuals
			 <br>driven by passion<br>
			 to bring everyone on-board<br>
			 our insurance service<br>
			 and insure all the rides,<br>and minimize the complexities
			 <br>associated with any accident/damage<br>of any kind to all vehicles<br>that have an engine
			 </p>
	
		</div>	
			
	</div>

	<%@include file="sharebuttons.html"%>
	<!-- social media share buttons component import -->

	<%@ include file="footer.html"%>
	<!-- footer import -->

</body>
</html>