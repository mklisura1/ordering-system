<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Ordering system | About us</title>
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

	<style type="text/css">
		div#map_container{
			width:100%;
			height:350px;
		}
	</style>
	
	<!-- Google Maps -->
	<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

	<!-- Google Maps -->
	<script type="text/javascript">
	function loadMap() {
	    var latlng = new google.maps.LatLng(43.858410, 18.427272);
	    var myOptions = {
	      scrollwheel: false,
	      navigationControl: false,
	      mapTypeControl: false,
	      scaleControl: false,
	      draggable: false,  
	      zoom: 19,
	      center: latlng,
	      mapTypeId: google.maps.MapTypeId.ROADMAP
	    };
	    var map = new google.maps.Map(document.getElementById("map_container"),myOptions);
		
	    var marker = new google.maps.Marker({
	      position: latlng, 
	      map: map, 
	      title:"Our first location!"
	    }); 
	  
	  }
	</script>
</head>
<body class="sidebar-mini skin-yellow fixed" onload="loadMap()">
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
					<li class="active"><a href="/OrderingSystem/aboutus"> <i
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
					<li><a href="/OrderingSystem/contact"> <i
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
				<h1>About us</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">About us</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-primary">
							<div class="box-header">
								<h3 class="box-title">Who we are?</h3>
							</div>
							<div class="box-body">
								<h3>Our moto is Your satisfaction</h3>
							
								<p>Built in 1882, at the crossroads of the Oriental and modern style, Hotel Europe is imbued with the best attributes of both worlds. Positioned in the heart of the Sarajevo city, just a few steps away from the tourist Old Town core, this Austro-Hungarian building with its external splendour alone will have you captivated.
								</p>
								
								<p>Upon entering the lobby, every stay at Hotel Europe unfolds like a journey along which you will be guided by our gracious staff. Welcoming soft lounge music and the enticing interior design worth analyzing is what you discover first. The spirit of the past times is preserved in the traditional section of the hotel showcasing the flamboyant decor of the years gone by, whereas a new section is designed with modern style.
								</p>
								
								<p>Hotel Europe has for an entire century been a silent witness to the history of Sarajevo and has hosted the most notable personalities from Europe and the rest of the world. It is at this Hotel that distinguished statesmen and politicians, high-profile corporate executives, motion picture and television personalities, artists and athletes have all stayed whilst visiting Sarajevo.
								</p>
								
								<p>Today, after 130 years of tradition, Hotel Europe has been restored to its original splendor and designed according to the highest standards of hospitality. Our all-inclusive offer is made of 160 luxurious rooms, 14 suites, 2 of which are presidential suites, 5 fully equipped conference halls, the state of the art spa&wellness facilities including fitness center, indoor swimming pool, turkish bath, tanning beds, saunas and massage.
								</p>
								
								<p>With the famous Viennese Cafe, Restaurant with first-class local and international culinary specialties and Mozart's Pâtisserie with original sweet delicacies, Hotel Europe will invigorate your soul and make your stay in Sarajevo a genuine experience you will always remember with a smile.
								</p>
								
							</div>
							
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="box box-primary">
							<div class="box-header">
								<h3 class="box-title">Where are we?</h3>
							</div>
							<div class="box-body">
								<div id="map_container">
								</div>
							</div>
						</div>
					</div>
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
	
	<!-- DatePicker and TimePicker -->
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
