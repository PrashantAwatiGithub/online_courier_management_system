<%-- 
    Document   : User_Login
    Created on : 19 Jan, 2022, 7:58:36 AM
    Author     : Ashvagandha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user_login</title>
        
        <script src="validation.js"></script>
        
    </head>
    
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  
   
  <script src="validation.js"></script>
    <style>
        
         * {
  margin:0;
  padding:0;
}
body {
  background-color:blue;
  font-family: 'Raleway', sans-serif;
}
#ribbon {
  position:absolute;
  background-color:red;
  color:white;
  top:40px;
  left:-30px;
  width:160px;
  transform:rotate(-45deg);
  text-align:center;
}
#container {
  position:relative;
  width:100%;
  margin: auto;
  background-color:black;
  box-shadow: -2px -2px 5px white,2px -2px 5px white;
}
#container > nav {
  width:100%;
  display:flex;
  max-height:60px;
}
#logo {
  line-height:60px;
  font-size:30px;
  padding: 0 70px;
  color: white;
  width:40%;
  letter-spacing:2px;
  font-weight: bolder;
  font-family:  serif;
}
#container > nav > ul {
  margin:0;
  list-style-type:none;
  display:flex;
  position:absolute;
    right:50px;
/*   min-width:60%; */
}
#container > nav > ul > li {
  line-height:60px;
  margin: 0 0px;
  padding:0;
  text-align:center;
  display:inline-block;
  
/*   background-color:green; */
  min-width:120px;

} 
#container > nav > ul > li > a {
  position:relative;
/*   background-color:red; */
  margin: 0 20px;
    color:white;
}
#container > nav > ul > li:hover {
  border-bottom: 2px solid white;
  background-color: #0088ff;
}
#container > nav > ul > .dropdown:hover {
  border-bottom:none;
}
#container > nav > ul > .dropdown:hover >  .dd
{
  display:block;
}
.dropdown:hover > a .fa-caret-down {
  display:none;
}
a {
  text-decoration:none;

}

#container > nav > ul > li > div {
  position:absolute;
  padding: 0 10px;
  
  background-color:black;
  display:none;
  background-color:aliceblue;
  min-width:100px;
}

#container > nav > ul > li > div > ul {
  margin:0px 0 10px 0;
  padding:0;
  list-style:none;
}
#u_a_c {
  position:relative;
  width:100%;
/*   background-color:red; */
}
#up_arrow {
  position:relative;
  width:20px;
  height:20px;
  left:42%;
  top:-10px;
  background-color:aliceblue;
  transform:rotate(45deg);
}
#container > nav > ul > li> div > ul > li:hover {
  background-color:rgba(0,0,0,0.2);
}
#container > nav > ul > li > div > ul > li > a {
  padding : 5px;
    color:black;
}
        
        .form1
        {
            height: 750px;
            width: 650px;
            background-color:transparent;
           
            border-color: black;
            border-radius: 20px;
            margin-left: 900px;
            margin-top: -650px;
            background-image: url("image/p9.png"); 
             background-size: 120%;
             background-position:right;
           
            background-repeat: no-repeat;
            margin-image:50px;
               
        }
        
        
        .form
        {
            height: 550px;
            width: 450px;
            background-color: transparent;
            box-shadow: 4px 5px 5px 5px grey;
            border-color:white;
            border-radius: 20px;
            margin-left: 300px;
            margin-top: 100px;
        }
        
        .page
        {
            height: 100px;
            width: 450px;
            border-radius: 20px;
            background-color:transparent;
            font-size: 42px;
            color: white;
            padding-left: 120px;
            padding-top: 30px;
        }
        
        .page1
        {
            font-size: 25px;
            color: white;
            padding-left: 95px;
            
        }
        
        .box1
        {
            height: 35px;
            width: 250px;
            margin-left: 95px;
            margin-top: 10px;
            background-color:  window;
            border-color: red;
            font-size: 20px;
        }
        
        .page2
        {
            color: white;
            font-size: 15px;
            padding-left: 95px;
            
        }
        
        .box2
        {
            height:35px;
            width: 250px;
            margin-left: 95px;
            margin-top: -10px;
            background-color: window;
            border-color: red;
            
              
                
        }
        
        .button1
        {
            margin-left: 125px;
            margin-top: 50px;
            height: 35px;
            width: 200px;
            color: white;
            background-color: blue;
            border-radius: 10px;
          font-weight: bolder;
           font-size: 17px;
        }
        
        .button2
        {
           margin-left: 126px;
            margin-top: 50px;
            margin-bottom: 10px;
            height: 35px;
            width: 250px;
            color: white;
            background-color: red;
            border-radius: 4px;
          font-weight: bolder;
           font-size: 20px;
        }
        
        .button3
        {
            margin-top: 20px;
             padding-left: 250px;
            height: 35px;
            color: blue;
            font-size: 18px;
            width: 250px;
            border-radius: 10px;
        }
        
        
     .bd
        {
            background-image: url("image/p7.jpg"); 
            background-size: 40%;
             background-position:right;
            background-size:110%;
            background-repeat: no-repeat;
            margin-image:50px;
               background-color: white;                             
             
      
        }   
        
        
        .footer
{
    padding:5px 20px;
    padding-top: 1px;
    background-color:#000;
    text-align:right;
    color:#fff;
    font-size:15px;
    height:30px;
    line-height:30px;
    margin-top: 50px;
    
}
        
    </style>
    
    
    
    
    
    
    <body class="bd">
        
         <div id="container">

      <nav>
        <div id="logo">
          ONLINE COURIER...!
        </div>
        <ul>
          <li><a href="homepage.jsp">Home</a></li>
          
          <li><a href="admin_login.jsp">Admin</a></li> 
          <li><a href="user_login.jsp">User</a></li>
          <li><a href="branch_login.jsp">Branch</a></li>
       
            
        </ul>
      </nav>
         </div>
        <div class="form">
            
            <h1 class="page">User Login</h2>
            
            <form method="post" action="user_login">
                
            <h2 class="page1">Email Id :</h2>
            <input class="box1" type="text" name="email" placeholder=" " onkeypress="return isString(evt)">
            
             <h2 class="page1" >Password : </h2>
             <input class="box1"type="password" name="pass"placeholder=" " onkeypress="return isAlphanumric(event)">
            
             <input type="submit"  class="button1"name="submit" value="Login">
             
             
             <a class="button2" href="user_signup.jsp">Create New Account </a>
             
             <a class="button3" href="user_forgot_password.jsp">Forgot Password </a>
            </form>
        </div>
        <div class="form1">
            
        </div>
        
          <div class="footer">
       
      </div>
        
        
    </body>
</html>
