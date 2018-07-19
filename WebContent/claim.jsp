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

<title>Sage - Request Claim</title>


<script>
	function disable() {
		window.location.href = "home.jsp";
	}
</script>
</head>
<body
	style="background-image: url(img/bg2.jpg); background-size: 100% 100%;">



	<%@include file="banner2.html"%>
	<!-- ribbon import -->
	<div class="content">



		<form action="claim.ins" method="post">
			<table id="login-form">
				<tr>
					<td colspan="2" style="text-align: center;">We are sorry for
						your loss :(<br>Please enter your details to allow us to help
						you
					</td>
				<tr>
					<td>Policy Id:</td>
					<td><input type="text" id="pid" name="policyId"
						pattern="[0-9]{5}"
						title="Only a valid policy ID of 5 digits is allowed"
						placeholder="Policy Id" required value="${PolicyId }"></td>
				</tr>
				<tr>
					<td>Description of loss:</td>
					<td><textarea id="losstype" name="problem"
							placeholder="Description of loss" required rows="4" cols="50"></textarea></td>
				</tr>

				<tr>

					<td><input type="text" id="eid" name="raisedBy"
						value=${ Customer.email } hidden></td>
				</tr>

	

				<tr>
					<td></td>
					<td><button type="submit" name="submit" value="claim"
							class="btn btn-success">Request Claim</button></td>
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