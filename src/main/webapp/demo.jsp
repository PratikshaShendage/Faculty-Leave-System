<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width,
initial-scale=1.0">
<link rel="stylesheet" type="text/css"href="css/fontawesome-4.7.0/css/fontawesome.css">


<link rel="stylesheet" type="text/css"href="css/fontawesome-4.7.0/css/fontawesome.min.css">
 <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
 <style><%@include file="css/demo.css"%></style>
 <title>Sign Up </title>
</head>
<body>

<form   name="sign_up" action="sign_up" method="post"></form>
 <div class="main">
     <center><h2>Sign up </h2></center><br><br>
     <div class=" Register">
     
    <input type="text" name="Name" class="textbox" placeholder="Enter Full name" ></input><br><br>
    <input type="text" name="email" class="textbox" placeholder="Enter your email"></input><br><br>
    <input type="password" name="password" class="textbox" placeholder="Enter your strong password "></input><br><br>
    <input type="text" name="conform password" class="textbox" placeholder="Conform Password"></input><br><br>
    <input type="text" name="department" class="textbox" placeholder="Department"></input><br><br>
    <input type="text" name="DOB" class="textbox" placeholder="Date of birth"></input><br><br>
        
    <div class="button">
             <input type=button name="button" class="btn" value="Sign Up" ></input><br><br>
             
    </div> 
      
      
      <label>"Have an account ?"<a href ="#">Login</a></label>
     
     
     
     </div>

</div>
</body>
</html>
