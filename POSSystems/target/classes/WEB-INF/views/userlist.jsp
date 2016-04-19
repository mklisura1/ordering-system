<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Import pocetnih skripti iz fajla -->
<%@ include file="template/skriptepocetak.jsp"%>

<title>MegaNet | Users</title>

</head>
<body class="hold-transition skin-black sidebar-mini">
	<!-- Site wrapper -->
	<div class="wrapper">
		<!-- Import main-header iz fajla -->
		<%@ include file="template/main-header.jsp"%>
		<!-- Import main-sidebar iz fajla -->
		<%@ include file="template/main-sidebar.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Users</h1>
			</section>

			<!-- Main content -->
			<section class="content">

				<!-- Default box -->
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">List of users</h3>
					</div>
					<div class="box-body">
						<!-- ///////////-------SADRZAJ STRANICE---------////////////// -->
						<table
							class="table table-hover table-striped table-bordered dataTable">
							<thead>
								<tr>
									<!-- <th><b>Id</b></th> -->
									<th><b>Username</b></th>
									<th><b>Salt</b></th>
									<th><b>Hash</b></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="user" items="${users}">
									<tr>
										<%-- <td>${user.user_id}</td> --%>
										<td>${user.username}</td>
										<td>${user.user_password_salt}</td>
										<td>${user.user_password_hash}</td>
									</tr>
								</c:forEach>
							</tbody>

							<tfoot>
								<tr>
									<!-- <th>Id</th> -->
									<th>Username</th>
									<th>Salt</th>
									<th>Hash</th>
								</tr>
							</tfoot>
						</table>

						<!-- ///////////-------SADRZAJ STRANICE---------////////////// -->
					</div>

				</div>
				<!-- /.box -->

			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->


		<!-- Import footera iz fajla -->
		<%@ include file="template/footer.jsp"%>
	</div>
	<!-- ./wrapper -->
	<!-- Import krajnjih skripti iz fajla -->
	<%@ include file="template/skriptekraj.jsp"%>
</body>
</html>