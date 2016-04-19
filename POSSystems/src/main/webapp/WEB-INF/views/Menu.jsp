<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Ordering system | Products</title>
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
  	.headerRow{display: none;}
  	.itemRow > .item-image{display: none;}
  	.itemRow > .item-total{display: none;}
  	.itemRow > .item-id{display: none;}
  	.itemRow > .item-price{margin-top: -20px; padding-left: 70px;}
  	.itemRow > .item-quantity{margin-top: -20px; padding-left: 20px;}
  	.itemRow > .item-increment{margin-top: -20px; padding-left: 50px;}
  	.itemRow > .item-remove{margin-top: -40px; padding-left: 140px; margin-bottom: 20px;}
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
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
            
              <!-- Shoping Cart-->
              <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Products in cart  
                  <i class="fa fa-cart-arrow-down"></i>
                  <span class="label label-success simpleCart_quantity"></span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have <i class="simpleCart_quantity"></i> products in cart</li>
                  <li class="header">Cart total: <i class="simpleCart_total"></i></li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <div class="slimScrollDiv"><ul class="menu">                      
                      <li class="cart">
                      	<div class="simpleCart_items">
							<div class="cartHeaders">
								<div class="itemImage" style="display: none;">Image</div>
								<div class="itemName">Name</div>
								<div class="itemPrice">Price</div>
								<div class="itemOptions" style="display: none;">Options</div>
								<div class="itemQuantity">Quantity</div>
								<div class="itemTotal" style="display: none;">Total</div>
							</div>
						</div>
                      </li>
                      <li>
	                  	<a href="javascript:;" class="pull-left btn-warning simpleCart_empty">Empty cart
	                  		<i class="fa fa-shopping-cart"></i>
	                  	</a>
					  	<a href="javascript:;" class="pull-right btn btn-success simpleCart_checkout">Checkout
					  		<i class="fa fa-cart-arrow-down"></i>
					  	</a>
					  </li>
                    </ul><div class="slimScrollBar"></div><div class="slimScrollRail"></div></div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>

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
            <li class="active">
              <a href="/OrderingSystem/menu">
                <i class="fa fa-cutlery"></i> <span>Menu</span>
              </a>
            </li>
            <li>
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
            Menu
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Menu</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
          	<div class="col-md-12">
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">Menu</h3>
					</div>
					<div class="box-body">
						<div class="simpleCart_shelfItem">
							<c:forEach var="category" items="${productCategories}">
								<div class="box box-primary">
									<div class="box-header with-border">
										<h3 class="box-title" style="text-align: center; display:block;">${category.category_name}</h3>
										<div class="box-tools pull-right">
											<button class="btn btn-box-tool" data-widget="collapse">
												<i class="fa fa-minus"></i>
											</button>
										</div>
									</div>
									<div class="box-body" style="display:block;">
										<div class="row">
											<c:forEach var="product" items="${category.products}">
												<div class="col-lg-4">
													<div class="contact-box">
														<!-- <a href="profile.html">  -->
										                    <div class="col-sm-4">
										                        <div class="text-center">
										                            <img src="${product.productPicture.picture_thumb}" alt="image" class="img-circle m-t-xs img-responsive item_image">
										                            <div class="m-t-xs font-bold item_price">${product.product_price} KM</div>
										                            
										                            <a href="#" onclick="simpleCart.add({
											                            id: ${product.product_id},
											                            name: '${product.product_name}', 
											                            price: ${product.product_price},
											                            image: '${product.productPicture.picture_thumb}', 
											                            quantity: 1
											                            });">
											                        
											                        Add to cart
											                        
											                        </a>
										                            <br>
										                        </div>
										                    </div>
										                    <div class="col-sm-8">
										                    	<%-- <span class="item_id">${product.product_id}</span> --%>
										                    	<h3 class="item_name"><strong>${product.product_name}</strong></h3>
										                    	<c:forEach var="ingredient" items="${product.productIngredients}">
										                        	<p>${ingredient.ingredient_name}</p>
										                        </c:forEach>
										                        
										                    </div>
										                    <div class="clearfix"></div>
														<!-- </a>  -->
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>	
							</c:forEach>
						</div><!-- shelf -->
					</div>		
				</div>
			</div>
            
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
</body>
</html>
