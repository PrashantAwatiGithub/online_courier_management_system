<%-- 
    Document   : Admin_Forgot_Password
    Created on : 22 Jan, 2022, 11:30:38 PM
    Author     : Ashvagandha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin_forgot_password</title>
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
  background-color:#0088ff;
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
  font-size:25px;
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
      
      
      .form
      {
         height: 600px;
          width: 650px;
          background-color: transparent;
          border-radius:20px;
          margin-left: 650px;
          margin-top: -25px;
          box-shadow: 5px 5px 10px 10px grey;      
      }
      
      .page1
      {
          padding-left: 135px;
          padding-top: 40px;
          color: white;
          font-weight: bolder;
          font-size: 55px;
          
      }
      
      .page2
      {
          padding-left: 140px;
          padding-top: 20px;
          color: white;
          font-weight: bolder;
          font-size: 25px;
          
          
      }
      
      .box1
      {
          height: 40px;
          width: 350px;
          border-color: red;
          margin-left: 140px;
          margin-top: 20px;
          font-size: 25px;
          border-radius: 10px;
      }
       .page3
      {
          padding-left: 140px;
          padding-top: 20px;
          color: white;
          font-weight: bolder;
          font-size: 25px;
          
      }
      
      .box2
      {
          height: 40px;
          width: 350px;
          border-color: red;
          margin-left: 140px;
          margin-top: 20px;
          font-size: 25px;
          border-radius: 10px;
      }
      
      .button1
      {
          border-color: red;
          margin-left: 180px;
          margin-top: 30px;
          height: 50px;
          width: 250px;
          background-color: blue;
          color: white;
          font-weight: bolder;
          font-size: 25px;
          border-radius: 10px
          
              
         
      }
      
      .bd
        {
            background-image: url("image/fpass.jpg");
            background-size:40%;
             background-position:right;
            background-size:100%;
            background-repeat: no-repeat;
            margin-image:50px;
               background-color:white;                             
             
      
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
    margin-top: 70px;
    padding-right: 100px;
    
}
      
      
      
    
  </style>
  
  <div id="container">

      <nav>
        <div id="logo">
          ONLINE COURIER...!
        </div>
        <ul>
          <li><a href="admin_home_page.jsp">Home</a></li>
          <li><a href="admin_add_branch.jsp">Add Branch</a></li> 
          <li><a href="admin_courier_list.jsp">Courier List</a></li>
          <li><a href="admin_courier_details.jsp">Courier Details</a></li>
          <li><a href="homepage.jsp">User List</a></li>
          <li><a href="homepage.jsp">Branch List</a></li>
          <li><a href="admin_login.jsp">Logout</a></li>

                     
        </ul>
      </nav>
    </div>
  
  <body class="bd">
      <div class="form1">
          <div class="form">
            
            <h1 class="page1">Forgot Password</h1>   
            
            <form method="post" action="admin_forgot_password">
                
            <h2 class="page2">Enter Username :</h2>
            <input class="box1" type="text" name="uname" placeholder=" ">
            
            <h2 class="page2">Enter New Password :</h2>
            <input class="box1" type="text" name="newpass" placeholder=" ">
            
            <h2 class="page2">Enter Confirm Password :</h2>
            <input class="box1" type="text" name="confirmpass" placeholder=" ">
            
            <br>
            <input type="submit"class="button1" name="submit" value="Save">
            
            </form>
            
        </div>
      </div>
       <div class="footer">
       <h4>Designed by :    Prashant Ananda Awati </h4>
      </div>
    </body>
</html>
