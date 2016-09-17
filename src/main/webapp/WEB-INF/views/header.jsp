<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>footbazzar header</title>
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
<link rel="icon" type="image/jpg" sizes="24x24"  href="<c:url value='/resources/img/favion images.jpg'/>">
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


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script>
	function formSubmit() {
		document.getElementById("logoutForm").submit();
	}
</script>
<c:url value='logout' var="logoutUrl" />
<form action="${logoutUrl}" method="post" id="logoutForm"></form>
</head>
<body>
	<header id="aa-header"> <!-- start header top  -->
	<div class="aa-header-top">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-header-top-area">
						<!-- start header top left -->
						<div class="aa-header-top-left">
							<!-- start language -->
							<div class="aa-language">
								<div class="dropdown">
									<a class="btn dropdown-toggle" href="#" type="button"
										id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="true"> <img
										src="<c:url value='/resources/img/flag/english.jpg'/>"
										alt="english flag">ENGLISH <span class="caret"></span>
									</a>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li><a href="#"><img
												src="<c:url value='/resources/img/flag/french.jpg'/>" alt="">FRENCH</a></li>
										<li><a href="#"><img
												src="<c:url value='/resources/img/flag/english.jpg'/>"
												alt="">ENGLISH</a></li>
									</ul>
								</div>
							</div>
							<!-- / language -->

							<!-- start currency -->
							<div class="aa-currency">
								<div class="dropdown">
									<a class="btn dropdown-toggle" href="#" type="button"
										id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="true"> <i class="fa fa-usd"></i>USD <span
										class="caret"></span>
									</a>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li><a href="#"><i class="fa fa-euro"></i>EURO</a></li>
										<li><a href="#"><i class="fa fa-jpy"></i>YEN</a></li>
									</ul>
								</div>
							</div>
							<!-- / currency -->
							<!-- start cellphone -->
							<div class="cellphone hidden-xs">
								<p>
									<span class="fa fa-phone"></span>84-38-46-97-99
								</p>
							</div>
							<!-- / cellphone -->
						</div>
						<!-- / header top left -->
						<div class="aa-header-top-right">
							<ul class="aa-head-top-nav-right">
								<li><a href="account.html">My Account</a></li>
								<li class="hidden-xs"><a href="cart.html">My Cart</a></li>
								<li class="hidden-xs"><a href="checkout.html">Checkout</a></li>
								<li class="hidden-xs"><a href="<c:url value='context'/>">FeedBack</a></li>
								<li class="hidden-xs"><a href="contact">Contact</a></li>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- / header top  --> <!-- start header bottom  -->
	<div class="aa-header-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-header-bottom-area">
						<!-- logo  -->
						<div class="aa-logo">
							<!-- Text based logo -->
							<a href="home"> <span class="fa fa-shopping-cart"></span>
								<p>
									daily<strong> Book Shop</strong> <span>Shopping Paradise</span>
								</p>
							</a>
							<!-- img based logo -->
							<!-- <a href="index.html"><img src="<c:url value='/resources/img/logo.jpg'/>" alt="logo img"></a> -->
						</div>
						<!-- / logo  -->
						<!-- cart box -->
						<div class="aa-cartbox">
							<a class="aa-cart-link" href="#"> <span
								class="fa fa-shopping-basket"></span> <span
								class="aa-cart-title">SHOPPING BOOK CART</span> <span
								class="aa-cart-notify">2</span>
							</a>
						</div>

						<!-- / cart box -->
						<!-- search box -->
						<div class="aa-search-box">
							<form action="">
								<input type="text" name="" id=""
									placeholder="Search here ex. 'cooking' ">
								<button type="submit">
									<span class="fa fa-search"></span>
								</button>
							</form>
						</div>
						<!-- / search box -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- / header bottom  --> </header>
	<!-- menu -->
	<section id="menu">
	<div class="container">
		<div class="menu-area">
			<!-- Navbar -->
			<div class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
					<!-- Left nav -->
					<ul class="nav navbar-nav">
						<li><a href="home">Home</a></li>
						<li><a href="#">Categories <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="comics">Fiction</a></li>
								<li><a href="art">Non-Fiction</a></li>
								<li><a href="literature">Literature</a></li>
								<li><a href="comics">Comics</a></li>
								<li><a href="textbook">Textbook</a></li>
								<li><a href="cooking">Cooking</a></li>
								<li><a href="engineering">Engineering</a></li>
								<li><a href="biography">Biography</a></li>
								<li><a href="#">And more.. <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="economics">Economics</a></li>
										<li><a href="historical">Historical</a></li>
										<li><a href="sciences">Sciences</a></li>
									</ul></li>
							</ul></li>
						<li><a href="#">Authors <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="bhagat">Chetan Bhagat</a></li>
								<li><a href="rowling">J K Rowling</a></li>
								<li><a href="sharma">Robin Sharma</a></li>
								<li><a href="brown">Dan Brown</a></li>
								<li><a href="tagore">R.N.Tagore</a></li>
								<li><a href="kalam">APJ Abdul Kalam</a></li>
								<li><a href="sharespeare">Shakespeare</a></li>
								<li><a href="#">And more.. <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="dickson">Charles Dicksan</a></li>
										<li><a href="milton">John Milton</a></li>
										<li><a href="homer">Homer</a></li>
									</ul></li>
							</ul></li>
						<li><a href="#">Sports</a></li>
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href="<c:url value="/products"/>"
								style="color: white">+Product</a></li>
							<li class="hidden-xs"><a href="viewall">Showall</a></li>
						</security:authorize>
						<c:if test="${!empty pageContext.request.userPrincipal.name}">
							<li><a href="<c:url value="/home"/>" style="color: white">
									<span class="glyphicon glyphicon-user"></span>Welcome..${pageContext.request.userPrincipal.name}
							</a></li>
							<security:authorize access="hasRole('ROLE_USER')">
								<li><a href="cart" style="color: white"><span
										class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
								<li class="hidden-xs"><a href="viewall">Showall</a></li>
							</security:authorize>
							<li><a href="javascript:formSubmit()" style="color: white"><span
									class="glyphicon glyphicon-log-out"></span>Logout</a></li>
						</c:if>

						<c:if test="${empty pageContext.request.userPrincipal.name}">
							<li><a href="<c:url value="/cart"/>" style="color: white"><span
									class="glyphicon glyphicon-shopping-cart"></span> My Cart</a></li>
							<li><a href="<c:url value="/memberShip.obj"/>"
								style="color: white"><span class="glyphicon glyphicon-user"></span>
									Sign Up</a></li>
							<li><a href="login1" style="color: white"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
						</c:if>
				</div>

				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
		</section>
	
	
	<!-- / header section -->
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