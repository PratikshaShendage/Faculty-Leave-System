<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.io.*"%>
    <%@page import="java.sql.*"%>


<%
   int total = 0;
   int staff = 0;
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
     
   
   
   Class.forName("com.mysql.jdbc.Driver");
   cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Faculty_Leave_Management_System","root","Root");
   st=cn.createStatement();

   
   String sql1 = "select * from signup" ;
   ResultSet rs1 = st.executeQuery(sql1);
   
   
   while(rs1.next())
   {
	   staff++;
	   
   }


%> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="css/font-awesome-4.7.0/css/font-awesome.css">
<link rel="stylesheet" type="text/css"href="css/font-awesome-4.7.0/css/font-awesome.min.css">


<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

<style> <%@include file="css/Principle_home.css"%> </style>



<title>Principle Home_Page</title>
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
             
            
           <div class="main">

          <div class="cards">

		
		 <div class="card1">
		 <div class="number"><%= staff %></div>
		 <div class="card-name">Staff</div>
		 
		 
		  <div class="icon-box">
		  <i class="fa fa-reorder"></i>
	      </div>
	       </div><br><br>   
	       
	      
		
		  
			 
		
		 
		  <div class="card2">
		 <div class="number"><%= total %></div>
		 <div class="card-name">Total Leaves</div>
		
		  
			 
		 <div class="icon-box">
		 <i class="fa fa-thumbs-down"></i>   
		 </div>
		 </div><br><br>
		 
		 
		  <div class="card3">
		 <div class="number"><%= accepted %></div>
		 <div class="card-name"> Aprove Leaves</div>
		
		  
			 
		 <div class="icon-box">
		 <i class="fa fa-hourglass-1"></i>   
		 </div>
		 </div><br><br>
		 
		 
		  <div class="card4">
		 <div class="number"><%= cancelled %></div>
		 <div class="card-name">Deny Leaves</div>
		  
		 
		 
		  <div class="icon-box">
		  <i class="fa fa-reorder"></i>
	      </div>
	       </div><br><br>   
       
          
		  <div class="card5">
		 <div class="number"><%= pending  %></div>
		 <div class="card-name">Pending Leaves</div>
		  
		 
		 
		  <div class="icon-box">
		  <i class="fa fa-reorder"></i>
	      </div>
	       </div><br><br>   


</div>
</div>


</body>
</html>


















