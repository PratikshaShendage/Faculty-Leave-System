<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.io.*" %>
     <%@page import = "java.sql.*" %>

<%
   int total = 0;
  
   int accepted = 0;
   int cancelled = 0;
   int pending = 0;
   
   
   Connection cn = null;
   Statement st = null; 
   
   Class.forName("com.mysql.jdbc.Driver");
   cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Faculty_Leave_Management_System","root","Root");
   st=cn.createStatement();
   
   String sql = "select * from apply_leave" ;
   ResultSet rs = st.executeQuery(sql);
   
   
   while (rs.next())
   {
	   total++;
	    
	   
	   if(rs.getString("status").equals("Accepted"))
	   {
		   accepted++;
		   
	   }
	   
	   if(rs.getString("status").equals("Cancel"))
	   {
		   cancelled++;
		   
	   }
	   
	   if(rs.getString("status").equals("Pending"))
	   {
		   pending++;
		   
	   }   
	   
   }
     
   %>
   
	<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <link rel="stylesheet" type="text/css"href="css/bootstrap.css">
<link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.css" type="text/css">
<style type="text/css"><%@include file="css/View_Status.css"%></style>
 <meta name="viewport" content="width=device-width,initial-scale=1.0">

 <title>View Status</title>
</head>
<body>
	 <div class="container">
		  <div class="sidebar">
			 <ul>
				 <li>
					 <a href="#">
					 <i class="fa fa-university"></i>
					 <div class="title">NMCE</div>
					 </a>
				 </li>
				 
			 <li>
				 <a href="Faculty_home.jsp">
				 <i class="fa fa-th-large"></i>
				 <div class="title">Dashboard</div>
				 </a>
			 </li>
			 
			 <li>
				 <a href="Change_Profile.jsp">
				 <i class="fa fa-address-card"></i>
				 <div class="title">Change Profile</div>
				 </a>
			 </li>
			 
			 <li>
				 <a href="Apply_leave.jsp">
				 <i class="fa fa-envelope"></i>
				 <div class="title">Apply Leave</div>
				 </a>
			 </li>
			 
			 <li>
				 <a href="View_Status.jsp">
				 <i class="fa fa-eye"></i>
				 <div class="title">View Status</div>
				 </a>
			 </li>
			 
			 <li>
				 <a href="Aout.jsp">
				 <i class="fa fa-user-circle"></i>
				 <div class="title">About Us</div>
				 </a>
			 </li>
			 
			 <li>
				 <a href="contact_us.jsp">
				 <i class="fa fa-phone"></i>
				 <div class="title">Contact Us</div>
				 </a>
			 </li>
			 
			 <li>
				 <a href="Login_Page.jsp">
				 <i class="fa fa-sign-out"></i>
				 <div class="title">Logout</div>
				 </a>
			 </li>
			 
			 </ul>
		 </div>
		 
		 <div class="main">
		
		 <div class="cards">
		 
		 <div class="card">
			 <div class="card-content">
				 <div class="number"><%= total  %></div>
				 <div class="card-name">Total Leaves</div>
			 </div>
			<div class="icon-box">
				 <i class="fa fa-reorder"></i>
			 </div>
		 </div>
		 
		 <div class="card">
			 <div class="card-content">
				 <div class="number"><%= accepted %></div>
				 <div class="card-name">Approved Leaves</div>
			 </div>
			 <div class="icon-box">
			 	<i class="fa fa-thumbs-up"></i>
			 </div>
		 </div>
		 
		 <div class="card">
			 <div class="card-content">
				 <div class="number"><%= cancelled %></div>
				 <div class="card-name">Deny Leaves</div>
			 </div>
			<div class="icon-box">
				 <i class="fa fa-thumbs-down"></i>
			 </div>
		 </div>
		 
		 <div class="card">
			 <div class="card-content">
				 <div class="number"><%=pending %></div>
				 <div class="card-name">Pending Leaves</div>
			 </div>
			 <div class="icon-box">
			 	<i class="fa fa-hourglass-1"></i>
			 </div>
		 </div>
	 </div>
	 
	 
	 <div class="tables">
		 <div class="last-appointments">
			 <div class="heading">
				 <h2>Leave Status</h2>
				 <a href="#" class="btn">View All</a>
			 </div>
			 
			<table class="appointments">
				 <thead>
					 <td>Leave Type</td>
					 <td>Duration</td>
					 <td>Form</td>
					 <td>To</td>
					 <td>Reason</td>
					 <td>Status</td>
				 </thead>
				 
				
				 <%
				  Connection cn1 = null;
				 Statement st1 = null;
				 
				 Class.forName("com.mysql.jdbc.Driver");
	              cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/Faculty_Leave_Management_System","root","Root");
	              st1=cn1.createStatement();
	              
	              String sql1="select * from apply_leave where status='accepted' ";
	              ResultSet rs1 =st.executeQuery(sql1);
	              
	              while(rs1.next())
	              {	 
				 %>
				 <form action="view_status" action="view_status" method="post">
				 <input type="hidden" name="id" value="<%=rs1.getString("id") %>">
				 
				 <thead>
				 	<tr>
				 	 
					 <td><%= rs1.getString("leave_type")%></td>
					 <td><%= rs1.getString("duration")%></td>
					 <td><%= rs1.getString("form")%></td>
					 <td><%= rs1.getString("date")%></td>
					 <td><%= rs1.getString("reason")%></td>
					 <td><%= rs1.getString("status")%></td>
				 	</tr>
				 </thead>
				 </form>
				 <%
				 
	              }
	              
				  %>
				 </tbody>
			 </table>
		 </div>
	
	 </div>
	 </div>
	 </div>
</body>
</html>
	
