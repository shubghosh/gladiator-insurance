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

<title>Portal Landing Page</title>

</head>

<body
	style="background-image: url(img/user-bg.jpg); background-size: 100% 100%;">

	<%@include file="banner2.html"%>
	<!-- ribbon import -->
	<div>
		<div class="content">

			<div class="row container-fluid">
				<!-- bootstrap magic sauce -->

				<p id="dash-info" class="text-center" style="margin-top: 50px;">
					<b>Payment Page</b>
				</p>
				<form action="pdf.ins" method="post">
					<table id="signup-form">
						<tr>
							<td colspan="2" style="text-align: center;"></td>
						</tr>
						<tr>
							<td><b>Credit/Debit Card No:</b></td>
							<td><input type="text" name="credit" pattern="[0-9]{12}"
								title="Please enter only 12-digit number" required></td>
						</tr>
						<tr>
							<td><b>Expiry Month/Year:</b></td>
							<!-- <td><input  name="expyear" required   ></td> -->
							<td><select id="exMonth" title="select a month">
									<option value="0">Month</option>
									<option value="01">January</option>
									<option value="02">February</option>
									<option value="03">March</option>
									<option value="04">April</option>
									<option value="05">May</option>
									<option value="06">June</option>
									<option value="07">July</option>
									<option value="08">August</option>
									<option value="09">September</option>
									<option value="10">October</option>
									<option value="11">November</option>
									<option value="12">December</option>
							</select></td>
							<td><select id="exYear" title="select a year">
									<option value="0">Year</option>
									<option value="2013">2018</option>
									<option value="2014">2019</option>
									<option value="2015">2020</option>
									<option value="2016">2021</option>
									<option value="2017">2022</option>
									<option value="2018">2023</option>
									<option value="2019">2024</option>
									<option value="2020">2025</option>
									<option value="2021">2026</option>
									<option value="2022">2027</option>
									<option value="2023">2028</option>
									<option value="2024">2029</option>
									<option value="2025">2030</option>
									<option value="2026">2031</option>
									<option value="2027">2032</option>
									<option value="2028">2033</option>
									<option value="2029">2034</option>
									<option value="2030">2035</option>
									<option value="2031">2036</option>
							</select></td>

						</tr>
						<tr>
							<td><b>CVV:</b></td>

							<td><input type="text" name="cvv" pattern="[0-9]{3}"
								title="Please enter only 3 digit number" required></td>
						</tr>
						<tr>
							<td><b>Amount:</b></td>
						<td> <input type="text" name="amount" value = ${ Premium } readonly ></td>
					</tr>

						<tr>
							<td style="text-align: center" colspan="2"><input
								type="submit" name="submit" value="Make Payment"
								class="btn btn-success"></td>
						</tr>
					</table>
				</form>
			</div>

		</div>
	</div>

	<%@include file="sharebuttons.html"%>
	<!-- social media share buttons component import -->

	<%@ include file="footer.html"%>
	<!-- footer import -->

</body>
</html>