<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>MegaNet | Registration</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="/OrderingSystem/resources/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/OrderingSystem/resources/bootstrap/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="/OrderingSystem/resources/plugins/iCheck/square/blue.css">

</head>
<body class="hold-transition register-page">
    <div class="register-box">
      <div class="register-logo">
        <a href="login"><b>MegaNET</b>CRM</a>
      </div>

      <div class="register-box-body">
        <p class="login-box-msg">Register a new membership</p>
        <form action="/OrderingSystem/users/registration" method="post">
          <div class="form-group has-feedback">
            <input type="text" class="form-control" value="${username}" placeholder="Username" name="username">
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" placeholder="Password" name="password">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            <h5 style="color: red">${error}</h5>
            <h5 style="color: red">${errorLength}</h5>
            <h5 style="color: red">${errorLetters}</h5>
            <h5 style="color: red">${errorNumbers}</h5>
            <h5 style="color: red">${errorSpecialCharacters}</h5>
          </div>          
          <div class="row">            
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat" style="float: right;">Register</button>
            </div><!-- /.col -->
          </div>
        </form>

        <a href="/OrderingSystem/login" class="text-center">I already have a membership</a>
      </div><!-- /.form-box -->
    </div><!-- /.register-box -->
  
    <!-- jQuery 2.1.4 -->
    <script src="/OrderingSystem/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="/OrderingSystem/resources/bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="/OrderingSystem/resources/plugins/iCheck/icheck.min.js"></script>
   
</body>
</html>
  