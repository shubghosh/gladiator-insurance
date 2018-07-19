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
	href="<%=request.getContextPath()%>/css/stylesheet.css">
	
	<link rel="stylesheet" type="text/css"
	href="https://bootswatch.com/4/darkly/bootstrap.min.css">

<title>Sage - Callback Form</title>
</head>
<body>

<%@include file="banner.html"%>
	<!-- ribbon import -->

	<div class="content">



	<p id="callback-text">
		Enter your details here <br>to submit a request for callback <br>from
		our agent
	<form action="#">
		<table id="contact-form">
			<tr>
				<td  class="form-group required"><label class="control-label">Name:</label></td>
				<td><input type="text" name="name" pattern="[A-Za-z]{3,}" title="Only text is allowed here" placeholder="Full Name" required></td>
			</tr>
			<tr>
				<td class="form-group required"><label class="control-label">E-mail:</label></td>
				<td><input name="email" type="email"  pattern="[a-zA-Z0-9]{4,}@[a-zA-Z]{3,}.[a-zA-Z]{2,}" title="Only a valid email is allowed" placeholder="Email Id" required></td>
			</tr>
			<tr>
				<td class="form-group required"><label class="control-label">Contact:</label></td>
				<td><input name="contact" type="text" pattern="[0-9]{10}"  title="Only a valid mobile number is allowed" placeholder="Mobile number" required></td>
			</tr>
			
			<tr>
				<td style="text-align: center" colspan="2"><input type="submit"
					name="submit" value="Submit request" class="btn btn-success"></td>
			</tr>
		</table>
	</form>


</div>
	<%@include file="sharebuttons.html"%>
<!-- social media share buttons component import -->

	<%@ include file="footer.html"%>
	<!-- footer import -->
</body>
</html>