
<%@ page import="pos.model.User"%>
<%
	User user = (User) request.getSession().getAttribute("user");
%>
<header class="main-header">
	<!-- Logo -->
	<a href="/OrderingSystem/home" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><b>M</b>Net</span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>Mega</b>Net</span>
	</a>
	<!-- Header Navbar: style can be found in header.less -->
	<nav class="navbar navbar-static-top" role="navigation">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span> <span
			class="icon-bar"></span> <span class="icon-bar"></span> <span
			class="icon-bar"></span>
		</a>
		<div class="navbar-custom-menu" style="color: silver;">
			<ul class="nav navbar-nav">
				<li >
				<a href="/OrderingSystem/logout" class="btn btn-default btn-flat">Sign out</a>	
				</li>	
			</ul>
		</div>
	</nav>
</header>