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

<title>Sage - Sign up</title>
</head>
<body>

	<%@include file="banner.html"%>
	<!-- ribbon import -->

	<div class="content">


		<form action="register.ins" method="post">

			<!-- <div class="form-group required"> -->
			<label class="control-label">

				<table id="signup-form">
					<tr>
						<td colspan="2" style="text-align: center;"><b>Sorry! You
								are not a registered user! Please confirm your details to sign
								up with us</b></td>
					</tr>
					<tr>
						<td><b>Aadhaar No.:</b></td>
						<td><input type="number" name="aadhar" value=${ User.aadhar } readonly></td>
					</tr>
					<tr>
						<td><b>Name:</b></td>
						<td><input type="text" name="name" value=${ User.name } readonly></td>
					</tr>
					<tr>
						<td><b>Phone no.:</b></td>
						<td>${ User.phone }</td>
					</tr>
					<tr>
						<td><b>Gender:</b></td>
						<td>${ User.gender }</td>
					</tr>
					<tr>
						<td><b>Address:</b></td>
						<td>${ User.address }</td>
					</tr>
					<tr>
						<td><b>Father's name:</b></td>
						<td>${ User.f_Name }</td>
					</tr>



					<tr>
						<td class="form-group required"><label class="control-label"><b>Email:</b></td>
						</label>
						<td><input type="email" name="email"
							pattern="[a-zA-Z0-9]{4,}@[a-zA-Z]{3,}.[a-zA-Z]{2,}"
							title="Only a valid email is allowed"
							placeholder="Enter your Email" required></td>
					</tr>

					<tr>
						<td class="form-group required"><label class="control-label"><b>Password:</b></td>
						</label>
						<td><input type="password" name="password" required
							id="pass1" placeholder="Enter a password"></td>
					</tr>

					<tr>
						<td class="form-group required"><label class="control-label"><b>Confirm
									Password:</b></td>
						</label>
						<td><input type="password" name="pass2" required id="pass2"
							onkeyup="validate(); return false;"
							placeholder="Re-enter password"></td>
						<span id="confirmMessage" class="confirmMessage"></span>
					</tr>


					<tr>
						<td></td>
						<td class="message1" id="message1"></td>
					</tr>

					<tr>
						<td class="form-group required" style="text-align: right"
							colspan="2"><label class="control-label"><input
								type="checkbox" name="terms" style="width: 20px; height: 20px;"
								required> &nbsp I agree to accept the <a
								href="terms.jsp" class="alert-link">terms and conditions</a> of
								service</td>
						</label>
					</tr>

					<tr>
						<td style="text-align: center" colspan="2"><input
							type="submit" name="submit" value="Submit"
							class="btn btn-success"></td>
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