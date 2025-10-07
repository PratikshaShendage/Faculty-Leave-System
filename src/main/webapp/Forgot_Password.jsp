<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style><%@include file="css/Forgot_Password.css"%></style>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<body>
     <form action ="forgot_password" name= "forgot_password" method= "post">

	<div class="login">
		<h2> Change Password </h2>
		
		<div class="row">
	    	<div><input type="text" name="E_Mail" class="textbox" placeholder="Email"></div>
	    	<br>
	    	<div><input type="text" name="password" name="Enter_password"  class="textbox" placeholder="ENTER PASSWORD"></div>
	    	<br>
		    <div><input type="text"  name="Conform_password"  class="textbox" placeholder="CONFORM PASSWORD"></div>
		     
		     
		     
		</div>  
		
		
		
		
		<div class="row" style="margin-left:230px;">
		 	<a href="Login_Page.jsp" class="forgot">Back to Login</a>
		</div>
		
		
		<input type="submit" name="submit" class="button" value="Submit">
		<br><br>
		<label>Don't have account? <a href="Faculty_Signup.jsp" class="register"> Register</a></label>
		
	</div>
	</form>
</body>
</html>


