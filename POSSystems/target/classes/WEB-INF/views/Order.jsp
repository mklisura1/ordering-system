<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Ordering system | Order</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="resources/bootstrap/dist/css/AdminLTE.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="resources/bootstrap/dist/css/skins/_all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  <style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}
  </style>
  
  <style type="text/css">
  	.headerRow{float:left; padding-top: 128px;}
  	
  	.itemRow{padding-left: 65px;}
  	
  	 .itemRow .item-thumb > img {margin-left: -70px;}
  	
  	.itemRow > .item-quantity {margin-top: -20px; padding-left: 10px;}
  	
  	.itemRow > .item-increment {margin-top: -20px; padding-left: 30px;}
  	
  	.itemRow > .item-remove {display: none;}
  </style>
</head>
<body class="sidebar-mini skin-yellow fixed">
	<div class="wrapper">

      <header class="main-header">

        <!-- Logo -->
        <a href="index" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>O</b>Sys</span>
          <!-- logo for regular state and mobile devices -->
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
            <li>
              <a href="/OrderingSystem/">
                <i class="fa fa-home"></i> <span>Home</span> 
              </a>
            </li>
            <li>
              <a href="/OrderingSystem/aboutus">
                <i class="fa fa-calendar"></i> <span>About us</span>
              </a>
            </li>
            <li>
              <a href="/OrderingSystem/menu">
                <i class="fa fa-cutlery"></i> <span>Menu</span>
              </a>
            </li>
            <li class="active">
              <a href="/OrderingSystem/order">
                <i class="fa fa-cart-plus"></i> <span>Order</span>
              </a>
            </li>
            <li>
              <a href="/OrderingSystem/reservation">
                <i class="fa fa-calendar-check-o"></i> <span>Reservation</span>
              </a>
            </li>
            <li>
              <a href="/OrderingSystem/gallery">
                <i class="fa fa-tv"></i> <span>Gallery</span>
              </a>
            </li>
            <li>
              <a href="/OrderingSystem/contact">
                <i class="fa fa-envelope"></i> <span>Contact</span>
              </a>
            </li>
            
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" style="min-height: 916px;">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Order
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Order</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
          	<div class="col-md-8">
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">Order details</h3>
					</div>
					<div class="box-body">
						<div class="simpleCart_items">
							<div class="cartHeaders">
								<div class="itemImage">Image</div>
								<div class="itemName">Name</div>
								<div class="itemPrice">Price</div>
								<div class="itemOptions">Options</div>
								<div class="itemQuantity">Quantity</div>
								<div class="itemTotal">Total</div>
							</div>
						</div>
					</div>		
				</div>
			</div>
			
			<form:form role ="form" method="POST" action="/OrderingSystem/order" modelAttribute="orderCartWrapper">
			<div class="col-md-4">
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">Delivery details</h3>
					</div>
					<div class="box-body">

						<spring:bind path="cart_data">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:input type="hidden" path="cart_data" name="cart_data" id="cart_data" class="form-control"/>
				        		<div class="has-error">
									<form:errors path="cart_data" cssStyle="color: #ff0000;"/>
								</div>
							</div>
						</spring:bind>
					
						<spring:bind path="order.order_street">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:label path="order.order_street">*Street</form:label>
								<form:input type="text" path="order.order_street" name="name" placeholder="e.g. Branilaca Sarajeva, Zmaja od Bosne etc"  class="form-control"/>
				        		<div class="has-error">
									<form:errors path="order.order_street" cssStyle="color: #ff0000;"/>
								</div>
							</div>
						</spring:bind>
						
						<spring:bind path="order.order_street_number">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:label path="order.order_street_number">*Street number</form:label>
								<form:input type="text" path="order.order_street_number" name="name" placeholder="e.g. 20/7a, 2/2b etc"  class="form-control"/>
				        		<div class="has-error">
									<form:errors path="order.order_street_number" cssStyle="color: #ff0000;"/>
								</div>
							</div>
						</spring:bind>
						
						<spring:bind path="order.order_first_name">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:label path="order.order_first_name">*First name or Nickname</form:label>
								<form:input type="text" path="order.order_first_name" name="name" placeholder="e.g. Marry, Inna etc"  class="form-control"/>
				        		<div class="has-error">
									<form:errors path="order.order_first_name" cssStyle="color: #ff0000;"/>
								</div>
							</div>
						</spring:bind>
						
						<spring:bind path="order.order_email">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:label path="order.order_email">*Your email</form:label>
								<form:input type="text" path="order.order_email" name="order_email" placeholder="e.g. example@example.com etc"  class="form-control"/>
				        		<div class="has-error">
									<form:errors path="order.order_email" cssStyle="color: #ff0000;"/>
								</div>
							</div>
						</spring:bind>
						
						<spring:bind path="order.order_phone">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:label path="order.order_phone">*Your phone number</form:label>
								<form:input type="text" path="order.order_phone" name="order_phone" placeholder="e.g. 38762123123 etc"  class="form-control"/>
				        		<div class="has-error">
									<form:errors path="order.order_phone" cssStyle="color: #ff0000;"/>
								</div>
							</div>
						</spring:bind>
						
						<spring:bind path="order.order_delivery_instructions">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:label path="order.order_delivery_instructions">*Delivery instructions</form:label>
								<form:input type="text" path="order.order_delivery_instructions" name="name" placeholder="e.g. Ring on front door etc"  class="form-control"/>
				        		<div class="has-error">
									<form:errors path="order.order_delivery_instructions" cssStyle="color: #ff0000;"/>
								</div>
							</div>
						</spring:bind>
						
						<span style="color: blueviolet;"> We need Your email and phone number to send verification code!</span>
						
					</div>
					
					<div class="box-footer">
						<a href="/OrderingSystem/menu" class="btn btn-info pull-left">Continue shopping</a>
						<button type="submit" class="btn btn-info pull-right">Send order</button>
					</div>		
				</div>
			</div>
			</form:form>
			
          </div><!-- /.row -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 1.0.0
        </div>
        <strong>Copyright © 2016- <a href="https://www.facebook.com/mklisura1">Mesud Klisura</a>.</strong> All rights reserved.
      </footer>

    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
    <script src="/OrderingSystem/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="/OrderingSystem/resources/bootstrap/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/OrderingSystem/resources/plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="/OrderingSystem/resources/bootstrap/dist/js/app.min.js"></script>
    <!-- Sparkline -->
    <script src="/OrderingSystem/resources/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="/OrderingSystem/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="/OrderingSystem/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- SlimScroll 1.3.0 -->
    <script src="/OrderingSystem/resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- ChartJS 1.0.1 -->
    <script src="/OrderingSystem/resources/plugins/chartjs/Chart.min.js"></script>
    <!-- SimpleCart -->
    <script src="/OrderingSystem/resources/plugins/SimpleCart/simpleCart.js"></script>
    
    <!-- SimpleCart -->
	<script>
	simpleCart({
		cartColumns: [
		                { attr: "image", label: "Item", view: "image"} ,
		                { attr: "name" , label: "Name" } ,
		                { attr: "price" , label: "Price", view: 'currency' } ,
		                { view: "decrement" , label: false , text: "-" } ,
		                { attr: "quantity" , label: "Qty" } ,
		                { view: "increment" , label: false , text: "+" } ,
		                { attr: "total" , label: "SubTotal", view: 'currency' } ,
		                { view: "remove" , text: "Remove" , label: false },
		                { attr: "id" , label: "ID" }
		            ],
		  
		checkout: {
			type: "SendForm" , 
		   	method: "GET" ,
 	    	url: "/OrderingSystem/order"
 	 	}
	  });

	  simpleCart.currency({
		    code: "KM" ,
		    name: "Bosnia-Herzegovina Convertible Mark" ,
		    symbol: " KM" ,
		    delimiter: " " , 
		    decimal: "," , 
		    after: true ,
		    accuracy: 2
		});
	 /*  window.onbeforeunload = function() {
		  localStorage.clear();
		  return '';
		}; */
	</script>
	
	<!-- Script to set order info  -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*order_data of Cart*/
			var cart_items = localStorage.getItem('simpleCart_items');
			$("#cart_data").val(cart_items);
			
		});
	</script>
</body>
</html>
