<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style> <%@include file="css/Login_Page.css"%> </style>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<header>
<nav> 
 	<div class="head">
 		<center>
 		<ul><br>
 			<li><a href="Home_Page.jsp">Home</a></li>
 			<li><a href="Faculty_Signup.jsp">SignUp</a></li>
 			<li><a href="Login_Page.jsp">Login</a></li>
 			<li><a href="About_Us.jsp">About Us</a></li>
 			<li><a href="contact_us.jsp">Contact Us</a></li>
 		</ul>
 		</center>
 	</div>
</nav>
</header>

<body>
 <form name="login" action="login" method="post">
	<div class="login">
		<h2> L O G I N </h2>
		
		<div class="row">
	    	<div><input type="text" name="e_mail" class="textbox" placeholder="Email"></div>
	    	<br>
	    	<div><input type="password" name="password" class="textbox" placeholder="ENTER PASSWORD"></div>
		     
		</div>
		
		
		
		<input type="submit" name="submit" class="button" value="Login">
		<br><br>
		
		<a href="Forgot_Password.jsp" class="forgot">Forgot Password?</a>
		<label>Don't have account? <a href="Faculty_Signup.jsp" class="register"> Register</a> </label><br><br>
		
	</div>
	</form>
</body>

</html>
