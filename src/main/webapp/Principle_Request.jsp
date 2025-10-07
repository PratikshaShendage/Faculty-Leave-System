`<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.io.*" %>
     <%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css"href="css/font-awesome-4.7.0/css/font-awesome.css">
<link rel="stylesheet" type="text/css"href="css/font-awesome-4.7.0/css/font-awesome.min.css">


<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style> <%@include file="css/Principle_Request.css"%> </style>



<title>Principle Request</title>
</head>
<body>

   <div class="Contener">
	  <div class="sidebar">
			 <ul>
				 <li>
					 <a href="#">
					 <i class="fa fa-university"></i>
					 <div class="title">NMCE</div>
					 </a>
				 </li>
				 
			 <li>
				 <a href="Principle_Home.jsp">
				 <i class="fa fa-th-large"></i>
				 <div class="title">Dashboard</div>
				 </a>
			 </li>
			 
			 
			 
			 <li>
				 <a href="Leve_details.jsp">
				 <i class="fa fa-envelope"></i>
				 <div class="title">Leave Request</div>
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



	
	
			 
			 <div class="tables">
		 <div class="last-appointments">
			 <div class="heading">
				 <h2>Leave Status</h2>
				 <a href="#" class="btn">View All</a>
			 </div>
			 
			<table class="appointments">
				 <thead>
				     <td>Name</td>
				     <td>Email</td>
					 <td>Leave Type</td>
					 <td>Duration</td>
					 <td>Form</td>
					 <td>To</td>
					 <td>Reason</td>
					 <td>Status</td>
					 
				 </thead>
				 
				 <%
				  Connection cn = null;
				 Statement st = null;
				 
				 Class.forName("com.mysql.jdbc.Driver");
	              cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Faculty_Leave_Management_System","root","Root");
	              st=cn.createStatement();
	              
	              String sql="select * from apply_leave where status='pending' ";
	              ResultSet rs1 =st.executeQuery(sql);
	              
	              while(rs1.next())
	              {	 
				 %>
				 <form action="principle_request" action="principle_request" method="post">
				 <input type="hidden" name="id" value="<%=rs1.getString("id") %>">
				 
				 <thead>
				 	<tr>
				 	 <td><%= rs1.getString("name")%></td>
					 <td><%= rs1.getString("email")%></td>
					 <td><%= rs1.getString("leave_type")%></td>
					 <td><%= rs1.getString("duration")%></td>
					 <td><%= rs1.getString("form")%></td>
					 <td><%= rs1.getString("date")%></td>
					 <td><%= rs1.getString("reason")%></td>
					 <td><%= rs1.getString("status")%></td>
					 <td><input type="submit" name="submit" value="Accept"><input type="submit" name="submit" value="Deny"></td>
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

</body>
</html>