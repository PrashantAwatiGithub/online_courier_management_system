<%-- 
    Document   : user_tracking
    Created on : 19 Feb, 2022, 11:42:58 PM
    Author     : Ashvagandha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user_tracking</title>
    </head>
    
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  
    
  <script src="validation.js"> </script>
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
            height: 450px;
            width: 450px;
            margin-top: 50px;
            background-color: whitesmoke;
            margin-left: -550px;
            border-radius: 20px;
            border-color: black;
            box-shadow: 10px 10px 5px  darkgray;
        }
        
        .form2
        
        {
            height: 700px;
            width: 600px;
            margin-top: 50px;
            background-color: transparent;
            margin-left: 800px;
            border-radius: 20px;
            border-color: black;
             background-image: url("image/png3.png"); 
            background-size: 100%;
            background-repeat: no-repeat;
             
        }
        
        
        .page
        {
            padding-left: 100px;
            font-size: 40px;
           color: black;
           padding-top: 20px;
           font-weight: bolder;
           
        }
        
        .page1
        {
            padding-left: 100px;
            padding-top: 40px;
            font-size: 25px;
            color: black;
            
        }
        
        .box1
        {
            height: 30px;
            width: 250px;
            border-color: red;
            background-color: lightgrey;
            margin-left: 100px;
            border-radius: 5px;
            margin-top: 40px;
            
        }
        
        .button1
        {
            margin-left: 150px;
           margin-top: 70px;
          height: 40px;
          width: 150px;
          background-color:  darkblue;
          color: white;
          border-radius: 10px;
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
    margin-top: 0px;
    
}
        
.bd
{
            /*background-image: url("image/p7.jpg"); */
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
           <li><a href="user_homepage.jsp">Home</a></li>
          <li><a href="user_courier_information.jsp">Add Courier</a></li> 
          <li><a href="user_courier_list.jsp">Courier List</a></li>
          <li><a href="user_tracking.jsp">Tracking</a></li>
          <li><a href="user_feedback.jsp">Feedback</a></li>
         <li><a href="user_login.jsp">Logout</a></li>
                
        </ul>
      </nav>
    </div>
        
         <div class="form2"> 
         
        
        <div class="form1"> 
            
            <h1 class="page">Track Courier</h1>
            
                <form method="post" action="user_tracking">
            
            
            <h2 class="page1">Consignment No :</h2>
            <input class="box1" name="consignmentno"type="text" placeholder=" " maxlength="10" onkeypress="return isNumber(event)">
                 
        
       
            <input type="submit" class="button1" name="submit"value="Track"> 
                </form>
            
            </div>
         </div>
            
            
           
           
                
                 </div>
           
             <div class="footer">
        
      </div>
    </body>
</html>
