<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product page</title>
<!-- Font awesome -->
<link href="<c:url value='/resources/css/font-awesome.css'/>"
	rel="stylesheet">
<!-- Bootstrap -->
<link href="<c:url value='/resources/css/bootstrap.css'/>"
	rel="stylesheet">
<!-- SmartMenus jQuery Bootstrap Addon CSS -->
<link
	href="<c:url value='/resources/css/jquery.smartmenus.bootstrap.css'/>"
	rel="stylesheet">
<!-- Product view slider -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/jquery.simpleLens.css'/>">
<!-- slick slider -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/slick.css'/>">
<!-- price picker slider -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/nouislider.css'/>">
<!-- Theme color -->
<link id="switcher"
	href="<c:url value='/resources/css/theme-color/default-theme.css'/>"
	rel="stylesheet">
<!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
<!-- Top Slider CSS -->
<link
	href="<c:url value='/resources/css/sequence-theme.modern-slide-in.css'/>"
	rel="stylesheet" media="all">

<!-- Main style sheet -->
<link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet">

<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>



</head>
<body>
	<div class="col-md-6">
		<div class="aa-myaccount-register">
			<h3>Product Data</h3>
			<form:form action="products" method="POST"
				enctype="multipart/form-data" commandName="product">
							Product Id:
							<p>
					<input type="text" id="name" name="productid">
					<td colspan="2"><form:errors path="productname"
							cssStyle="color : blue;" /></td>
				</p>
				<hr>
							Name: 
				<p>
					<input type="text" id="name" name="productname">
					<tr>
						<td colspan="2"><form:errors path="productname"
								cssStyle="color : green;" /></td>
					</tr>

				</p>
				<hr>
						
							Quantity: 
				<p>
					<input type="text" id="name" name="productquantity">
					<tr>
						<td colspan="2"><form:errors path="productquantity"
								cssStyle="color : orange;" /></td>
					</tr>

				</p>
				<hr>
						
							Size: 
				<p>
					<input type="text" id="name" name="productsize">
					<tr>
						<td colspan="2"><form:errors path="productsize"
								cssStyle="color : orange;" /></td>
					</tr>

				</p>
				<hr>
						
							Price: 
				<p>
					<input type="text" id="name" name="productprice">
					<tr>
						<td colspan="2"><form:errors path="productprice"
								cssStyle="color : red;" /></td>
					</tr>

				</p>
				<hr>
							Description: 
				<p>

					<input type="text" id="name" name="productdescription">
					<tr>
						<td colspan="2"><form:errors path="productdescription"
								cssStyle="color : grey;" /></td>
					</tr>

				</p>
				<hr>
							Image:
							<p>
					<input type="file" id="name" name="image">
				</p>
				<hr>
							ImageName: 
					<p>
					<input type="text" id="name" name="imagename">
					<tr>
						<td colspan="2"><form:errors path="imagename"
								cssStyle="color : puple;" /></td>
					</tr>
				</p>
				<hr>
							Category:
				<form:select path="category" style="color:black">
					<form:option selected="--category--" value="category">Select any category</form:option>
					<form:option value="formals">Formals</form:option>
					<form:option value="casuals">Casuals</form:option>
					<form:option value="sports">Sports</form:option>
				</form:select>
				<hr>
				<td colspan="2" class="h"><input type="submit" name="action"
					value="Add" style="color: black" /> <input type="submit"
					name="action" value="Edit" style="color: black" /></td>
			</form:form>

			<input type="button" value="back" onclick="javascript:history.back()" />
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<c:url value='/resources/js/bootstrap.js'/>"></script>
	<!-- SmartMenus jQuery plugin -->
	<script type="text/javascript"
		src="<c:url value='/resources/js/jquery.smartmenus.js'/>"></script>
	<!-- SmartMenus jQuery Bootstrap Addon -->
	<script type="text/javascript"
		src="<c:url value='/resources/js/jquery.smartmenus.bootstrap.js'/>"></script>
	<!-- To Slider JS -->
	<script src="<c:url value='/resources/js/sequence.js'/>"></script>
	<script
		src="<c:url value='/resources/js/sequence-theme.modern-slide-in.js'/>"></script>
	<!-- Product view slider -->
	<script type="text/javascript"
		src="<c:url value='/resources/js/jquery.simpleGallery.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/js/jquery.simpleLens.js'/>"></script>
	<!-- slick slider -->
	<script type="text/javascript"
		src="<c:url value='/resources/js/slick.js'/>"></script>
	<!-- Price picker slider -->
	<script type="text/javascript"
		src="<c:url value='/resources/js/nouislider.js'/>"></script>
	<!-- Custom js -->
	<script src="<c:url value='/resources/js/custom.js'/>"></script>
</body>
</html>
<%@include file="footer.jsp"%>