<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Ordering system | Contact</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<!-- Timepicker -->
<link rel="stylesheet"
	href="resources/plugins/timepicker2/jquery.timepicker.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="resources/bootstrap/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="resources/bootstrap/dist/css/skins/_all-skins.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
		endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
	z-index: 10000;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}
</style>
</head>
<body class="sidebar-mini skin-yellow fixed">
	<div class="wrapper">

		<header class="main-header">

			<!-- Logo -->
			<a href="index" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>O</b>Sys</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Order</b>System</span>
			</a>
			
			<!-- Header Navbar: style can be found in header.less -->
	        <nav class="navbar navbar-static-top" role="navigation">
	          <!-- Sidebar toggle button-->
	          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
	            <span class="sr-only">Toggle navigation</span>
	          </a>
	        </nav>

		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar" style="height: auto;">
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="header">MAIN NAVIGATION</li>
					<li><a href="/OrderingSystem/"> <i class="fa fa-home"></i>
							<span>Home</span>
					</a></li>
					<li><a href="/OrderingSystem/aboutus"> <i
							class="fa fa-calendar"></i> <span>About us</span>
					</a></li>
					<li><a href="/OrderingSystem/menu"> <i
							class="fa fa-cutlery"></i> <span>Menu</span>
					</a></li>
					<li><a href="/OrderingSystem/order"> <i
							class="fa fa-cart-plus"></i> <span>Order</span>
					</a></li>
					<li><a href="/OrderingSystem/reservation">
							<i class="fa fa-calendar-check-o"></i> <span>Reservation</span>
					</a></li>
					<li><a href="/OrderingSystem/gallery"> <i class="fa fa-tv"></i>
							<span>Gallery</span>
					</a></li>
					<li class="active"><a href="/OrderingSystem/contact"> <i
							class="fa fa-envelope"></i> <span>Contact</span>
					</a></li>

				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 916px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Contact</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Contact</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
				<form:form role ="form" method="POST" action="/OrderingSystem/contact" modelAttribute="contact">
					<div class="col-md-12">
						<div class="box box-primary">
							<div class="box-header">
								<h3 class="box-title">Contact us</h3>
							</div>
							<div class="box-body">
								<div class="row">
									<div class="col-md-6">
									
										<spring:bind path="customer_first_name">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:label path="customer_first_name">*First name</form:label>
											<form:input type="text" path="customer_first_name" name="firstname" placeholder="First name"  class="form-control"/>
				        					<div class="has-error">
												<form:errors path="customer_first_name" cssStyle="color: #ff0000;"/>
											</div>
										</div>
										</spring:bind>
										
										<spring:bind path="customer_last_name">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:label path="customer_last_name">*Last name</form:label>
											<form:input type="text" path="customer_last_name" name="lastname" placeholder="Last name"  class="form-control"/>
				        					<div class="has-error">
												<form:errors path="customer_last_name" cssStyle="color: #ff0000;"/>
											</div>
										</div>
										</spring:bind>
										
										<spring:bind path="customer_email">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:label path="customer_email">*E mail</form:label>
											<form:input type="text" path="customer_email" name="email" placeholder="E mail"  class="form-control"/>
				        					<div class="has-error">
												<form:errors path="customer_email" cssStyle="color: #ff0000;"/>
											</div>
										</div>
										</spring:bind>
	
									</div>
									<div class="col-md-6">
										
										<spring:bind path="customer_phone">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:label path="customer_phone">*Phone</form:label>
											<form:input type="text" path="customer_phone" name="phone" placeholder="Phone"  class="form-control"/>
				        					<div class="has-error">
												<form:errors path="customer_phone" cssStyle="color: #ff0000;"/>
											</div>
										</div>
										</spring:bind>
										
										<spring:bind path="category">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:label path="category">*Category</form:label>
											<form:select path="category" class="form-control">
												<form:option value="" label="--- Select ---" />
											  	<form:option value="Complaint" label="Complaint" />
											  	<form:option value="Question" label="Question" />
											  	<form:option value="Application" label="Application" />
											  	<form:option value="Other" label="Other" />
											</form:select>
				        					<div class="has-error">
												<form:errors path="category" cssStyle="color: #ff0000;"/>
											</div>
										</div>
										</spring:bind>
										
										<spring:bind path="subject">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:label path="subject">*Subject</form:label>
											<form:input type="text" path="subject" name="subject" placeholder="Subject of message"  class="form-control"/>
				        					<div class="has-error">
												<form:errors path="subject" cssStyle="color: #ff0000;"/>
											</div>
										</div>
										</spring:bind>
									</div>
								</div>
								
								<div class="row">
									<div class="col-md-12">
										<spring:bind path="message">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:label path="message">*Message</form:label>
											<form:textarea rows="7" cols="70" path="message" name="message" placeholder="Enter message"  class="form-control"/>
											<!-- 
											<form:input type="text" path="message" name="message" placeholder="Enter message"  class="form-control"/>
											-->
											<div class="has-error">
												<form:errors path="message" cssStyle="color: #ff0000;"/>
											</div>
										</div>
										</spring:bind>
									
									</div>
								</div>
							</div>

							<p class="text-muted">Our team will send response to Your email!</p>

							<div class="box-footer">
								<button type="submit" class="btn btn-info pull-right">Send</button>
							</div>

						</div>
					</div>
					</form:form>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 1.0.0
			</div>
			<strong>Copyright © 2016- <a
				href="https://www.facebook.com/mklisura1">Mesud Klisura</a>.
			</strong> All rights reserved.
		</footer>

	</div>
	<!-- ./wrapper -->

	<!-- jQuery 2.1.4 -->
	<script
		src="/OrderingSystem/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!-- Bootstrap 3.3.5 -->
	<script src="/OrderingSystem/resources/bootstrap/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script
		src="/OrderingSystem/resources/plugins/fastclick/fastclick.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/OrderingSystem/resources/bootstrap/dist/js/app.min.js"></script>
	<!-- Sparkline -->
	<script
		src="/OrderingSystem/resources/plugins/sparkline/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script
		src="/OrderingSystem/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="/OrderingSystem/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- SlimScroll 1.3.0 -->
	<script
		src="/OrderingSystem/resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- ChartJS 1.0.1 -->
	<script src="/OrderingSystem/resources/plugins/chartjs/Chart.min.js"></script>
	<!-- Date picker -->
	<script src="/OrderingSystem/resources/plugins/datepicker/bootstrap-datepicker.js"></script>
	<!-- Time picker -->
	<script src="/OrderingSystem/resources/plugins/timepicker2/jquery.timepicker.min.js"></script>
	
	<script type="text/javascript">
		$('#datepicker').datepicker({
			format : 'dd/mm/yyyy'
		});

		$('#timepicker').timepicker({
			'timeFormat':'H:i',
			'step': 15
		});
	</script>
	
</body>
</html>
