
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

<style><%@include file="css/Apply_leave.css"%></style>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="ISO-8859-1">

<title>Apply Leave</title>

</head>

<body>

     <form action= "apply_leave" name= "apply_leave" method="post">
     
     <div class="Main">
     
     
     
	     <div class="Contener">
	  <div class="sidebar">
	  
   <ul>
		 <li>
		 <a href="#">
		 <i class="fa fa-university"></i>
		 <div class="title">NMCE</div>
		 </a>
		 </li><br><br>
     
        <li>
	 	 <a href="Faculty_home.jsp">
		 <i class="fa fa-university"></i>
		 <div class="title">Dashbord</div>
		 </a>
	    </li>
	    
	     <li>
		 <a href="Change_Profile.jsp">
		 <i class="fa fa-university"></i>
		 <div class="title">Change Profile</div>	
		 </a>
		 </li>
      
         <li>
		 <a href="Apply_leave.jsp">
		 <i class="fa fa-university"></i>
		 <div class="title">Apply Leave</div>
		 </a>
		 </li>
		 
		  <li>
		 <a href="View_Status.jsp">
		 <i class="fa fa-university"></i>
		 <div class="title">View Status</div>
		 </a>
		 </li>
     
         <li>
		 <a href="About_Us.jsp">
		 <i class="fa fa-university"></i>
		 <div class="title">About Us</div>
		 </a>
		 </li>  
      
          <li>
		 <a href="contact_us.jsp">
		 <i class="fa fa-university"></i>
		 <div class="title">Contact Us </div>
		 </a>
		 </li>
		 
		 <li>
		 <a href="Login_Page.jsp">
		 <i class="fa fa-university"></i>
		 <div class="title">Logout</div>
		 </a>
		 </li>
		 
	 </ul> 
    </div><br>
    </div>
	  
	  
	 
	  	<div class="sub">
	  		<label for="name">Name : </label>
	  		<input type="text" name="name" class="textbox" placeholder="Name">
	  		
	  		<label for="email">Email : </label>
	  		<input type="text" name="email" class="textbox" placeholder="Email">
	  		
	  		<label for="leave">Leave Type: </label>
	  		<input type="text" name="leave_type" class="textbox" placeholder="Leave Type">
	  		
	  		<label for="duration">Duration :</label>
	  		<input type="text" name="duration" class="textbox" placeholder="Duration">
	  		
	  		<label for="form">Form :</label>
	  		<input type="date" name="form" class="textbox" placeholder="Form">
	  		
	  		<label for="to">To :</label>
	  		<input type="date" name="date" class="textbox" placeholder="To">
	  		
	  		<label for="message">Reason :</label>
	  		<textarea type="text" name="reason" class="textbox" placeholder="Enter Your Message"></textarea><br><br>
	  		
	  		<input type="submit" name="submit" class="button" value="Submit">
	  	
	  	
	  	
	  	</div>
	  
	  </div>
	 
	  </form>
	  </body>
	  </html>
 




