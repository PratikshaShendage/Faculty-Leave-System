<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style> <%@include file="css/Faculty_Signup.css"%> </style>
<meta charset="ISO-8859-1">
<title>Register</title>
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
 <form  name="faculty_signup" action="faculty_signup" method="post">
	<div class="main">  
		 <h2>Sign Up</h2>
		   <div class="register">
		      
		      </div>
		      <input type="text" name="full_name" class="textbox" placeholder="Full name"><br><br>
		      <input type="text" name="e_mail" class="textbox" placeholder="Email"><br><br>
		    
		      <input type="text" name="mobile_no" class="textbox" placeholder="Mobile No"><br><br>
		      <input type="text" name="department" class="textbox" placeholder="Department"><br><br>
		      <input type="text" name="date_of_birth" class="textbox" placeholder=" Date of Birth"><br><br>
		      <input type="password" name="password" class="textbox" placeholder="Password"><br><br>
		      <input type="password" name="Conform_password" class="textbox" placeholder="Conform_password"><br><br>
		      <div class="row">
		      <input type="submit" name="submit" class="button" value="Sign up">
	          <br><br>
		   </div>
		   
		   <label>Have an account? <a href="Login_Page.jsp">Login</a></label>
		   
		   </div>
	</div>
	</form>
</body>
</html>