		<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"  type="text/css"  href="css/bootstrap.css">
<style><%@include file="css/Contact_Us.css"%></style>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
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

<form action="contact" method="post">
  
   <div class ="main">

<div class="col-sm-6">
	 <div class="img">
	 <img src="images/contact.png" style="margin-top: 100px;">
	 </div>
</div>
  
  
  <div class="col-sm-6">
  	 <div class ="Contact">
     <h2>Contact us</h2><br>
   <label> Name  : </label>
   <input type="text" name="name" class="textbox" placeholder="Name" ><br><br>

   <label> Email  : </label>
   <input type="text" name="email" class="textbox" placeholder="Email" ><br><br><br>

   <label> Message  : </label>
   <textarea  type="text" name="message" class="textbox" placeholder="Message" ></textarea><br><br>



     <input type="submit" value="Submit" name="submit">



</div>
  </div>
</div>
</form>
</body>
</html>
