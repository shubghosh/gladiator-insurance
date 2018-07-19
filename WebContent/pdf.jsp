<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Policy Invoice</title>

<%-- <!-- making imports for javascript, jquery, bootstrap -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/main.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>



<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/kendo.all.min.js"></script>
 --%>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script src="js/kendo.all.min.js"></script>
<style>
.invoice-box {
	max-width: 800px;
	margin: auto;
	padding: 30px;
	border: 1px solid #eee;
	box-shadow: 0 0 10px rgba(0, 0, 0, .15);
	font-size: 16px;
	line-height: 24px;
	font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
	color: #555;
}

.invoice-box table {
	width: 100%;
	line-height: inherit;
	text-align: left;
}

.invoice-box table td {
	padding: 5px;
	vertical-align: top;
}

.invoice-box table tr td:nth-child(2) {
	text-align: right;
}

.invoice-box table tr.top table td {
	padding-bottom: 20px;
}

.invoice-box table tr.top table td.title {
	font-size: 45px;
	line-height: 45px;
	color: #333;
}

.invoice-box table tr.information table td {
	padding-bottom: 40px;
}

.invoice-box table tr.heading td {
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-weight: bold;
}

.invoice-box table tr.details td {
	padding-bottom: 20px;
}

.invoice-box table tr.item td {
	border-bottom: 1px solid #eee;
}

.invoice-box table tr.item.last td {
	border-bottom: none;
}

.invoice-box table tr.total td:nth-child(2) {
	border-top: 2px solid #eee;
	font-weight: bold;
}

@media only screen and (max-width: 600px) {
	.invoice-box table tr.top table td {
		width: 100%;
		display: block;
		text-align: center;
	}
	.invoice-box table tr.information table td {
		width: 100%;
		display: block;
		text-align: center;
	}
}

/** RTL **/
.rtl {
	direction: rtl;
	font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial,
		sans-serif;
}

.rtl table {
	text-align: right;
}

.rtl table tr td:nth-child(2) {
	text-align: left;
}
</style>

<script>
	var generatePDF = function() {
		kendo.drawing.drawDOM($("#formConfirmation")).then(function(group) {
			kendo.drawing.pdf.saveAs(group, "Converted PDF.pdf");
		});
	}
</script>

</head>

<body>

	<div id="formConfirmation">

		<div class="invoice-box">
			<table cellpadding="0" cellspacing="0">
				<tr class="top">
					<td colspan="2">
						<table>
							<tr>
								<td class="title"><img src="img/logo.png"
									style="width: 40%; height: 15%;"></td>

								<!-- logo image -->


								<td>Invoice no.: ${Invoice.ticketId}<br>Policy ID: ${ Invoice.policyId}
									<br>Purchase Date: 19 July 2019<br> Policy
									Valid Upto: 19 July 2019
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="information">
					<td colspan="2">
						<table>
							<tr>
								<td><b>Sage Vehicle Insurance Pvt. Ltd.</b><br>LTI
									Mahape<br> Navi Mumbai, MH - 400710</td>

								<td>Vehicle Registration No.: ${ Invoice.registerNo}<br>Customer
									Id: ${ Invoice.customerId }
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="heading">
					<td>Payment Method</td>

					<td>Transaction Id:</td>
				</tr>

				<tr class="details">
					<td>Credit Card</td>

					<td>xxx-xxxxx</td>
				</tr>

				<tr class="heading">
					<td>Item</td>

					<td>Price</td>
				</tr>

				<tr class="item">
					<td>policy ${ptype}</td>

					<td>price ${ Invoice.amount}</td>
				</tr>




				<tr class="total">
					<td></td>

					<td>Total: ${ Invoice.amount}</td>
				</tr>
			</table>
		</div>
	</div>

	<button class="btn btn-info" onclick="generatePDF()"
		style="width: 30%; margin-left: 30%;">Save as PDF</button>
	<script>
		var generatePDF = function() {
			kendo.drawing.drawDOM($("#formConfirmation")).then(function(group) {
				kendo.drawing.pdf.saveAs(group, "Converted PDF.pdf");
			});
		}
	</script>
</body>
</html>