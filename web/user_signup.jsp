<%-- 
    Document   : user_signup
    Created on : 19 Feb, 2022, 11:38:06 PM
    Author     : Ashvagandha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user_signup</title>
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
           height: 600px;
            width: 600px;
            background-color: whitesmoke;
            margin-left: 450px;
            margin-top: 5px;
            border-radius: 20px;
            border-color: black;
            box-shadow: 5px 4px 7px 4px  darkgray;
      }
      
      .form2
      {
            height: 100px;
            width: 600px;
            background-color: teal;
            margin-top: 30px;
            border-radius: 20px;
            border-color: black;
      }
      
      .page1
      {
           height: 100px;
            width: 450px;
            font-size: 30px;
            color: black;
            padding-left: 190px;
            padding-top: 20px;
            font-weight: bolder;
      }
      
      .page2
      {
         
            font-size: 25px;
            color:black;
            padding-left: 50px;
            padding-top: 10px;
            font-weight: bolder;
            margin-top: -55px;
      }
      
      .box1
      {
            background-color: white;
            border-radius: 10px;
            height: 40px;
            width: 270px;
            font-size: 20px;
            border-color: darkblue;
            margin-top: 5px;
      }
      
       .button1
      {
          border-color: red;
          margin-left: 55px;
          margin-top: 30px;
          height: 40px;
          width: 200px;
          background-color: blue;
          color: white;
          font-weight: bolder;
          font-size: 15px;
          border-radius: 10px
          
              
         
      }
      
      .button2
      {
          border-color: red;
          margin-left: 80px;
          margin-top: 30px;
          height: 40px;
          width: 200px;
          background-color: red;
          color: white;
          font-weight: bolder;
          font-size: 15px;
          border-radius: 10px
          
              
         
      }
      
       .footer
{
    padding:5px 20px;
    padding-top: 1px;
    background-color:#000;
    text-align:right;
    color:#fff;
    font-size:15px;
    font-weight: bolder;
    height:30px;
    line-height:30px;
    margin-top: 110px;
    
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
        
        <div class="form1">
            <div class="form2">
                <h1 class="page1">Sign Up</h1>
                
                
                <form method="post" action="user_signup">
                    
                <label class="page2" >First Name :</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="box1" name="fname"type="text" placeholder=" " onkeypress="return isString(event)">
                
                 <label class="page2" >Last Name :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="box1" name="lname"type="text" placeholder=" " onkeypress="return isString(event)">
                
                 <label class="page2" >Date Of Birth :</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="box1" name="dob"type="date" placeholder=" " maxlength="4" onkeypress="return isNumber(event)">
                
                 <label class="page2" >Mobile No :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="box1"name="mob" type="text" placeholder=" " maxlength="10" onkeypress="return isContactno(event)">
                
                 <label class="page2" >Email ID :</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="box1" name="email"type="text" placeholder=" " onkeypress="return isAlphanumric(event)">
                
                <label class="page2" >Password :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="box1" name="pass"type="text" placeholder=" " onkeypress="return isAlphanumric(event)">
                
                <label class="page2" > Confirm Pass :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="box1" name="conf"type="text" placeholder=" " onkeypress="return isAlphanumric(event)">
                
                <input type="submit"class="button1 " name="submit" value="Submit">
                
                <input type="submit"class="button2" name="submit" value="Cancel">
                 
                </form>
            </div>
            
        </div>
         <div class="footer">
             <h4>Designed by :    Prashant Ananda Awati </h4>
      </div>
        
        
        
    </body>
</html>
