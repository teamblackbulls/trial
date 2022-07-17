<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Sign In</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="assets/style.css">  
  	<style>
  		.login-box{
    		height: 380px;
		}
	</style>
	
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #95ac80">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> MasjidSalam </a>
			</div>
		</nav>
	</header>
	<br>
	
	<form method="post" action="LoginStaffController">
		<div class="login-box">
			<img src="assets/user.png" class="avatar">
			<h1>Staff Login</h1>
				<p>Staff ID</p>
				<input type="text" id="staffid1" name="staffid1" required="required" placeholder="S00129">
				
				<p>Password</p>
				<input type="password" id="pass" name="pass" required="required" placeholder="******">
				
				<input type="submit" name="submit" value="login">
	</form>
		<center><h1><a href="index.html">Back</a></h1></center>
		</div>
</body>
</html>