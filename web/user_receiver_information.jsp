<%-- 
    Document   : user_receiver_information
    Created on : 17 Jan, 2022, 6:37:10 AM
    Author     : Ashvagandha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user_receiver_information</title>
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
         
        
        .page
        {
            background-color:whitesmoke;
            height: 500px;
            width: 1000px;
            margin-left:200px;
            border-radius:20px;
            border-color:red;
            border:30px;
            box-shadow: 7px 5px 5px 5px grey;
            margin-top:-25px;
        }
        
        .page1
        {
            background-color: gold;
            height: 100px;
            width: 1000px;
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
            box-shadow: 0.1px 5px red;
           
            }
            
            .page2
            {
                padding-left: 250px;
                padding-top: 35px;
                color:black;
                font-size: 45px;
                margin: 50px;
                font-weight: bolder;
                
            }
        .page3
        {
            padding-top: -20px;
            margin-left: 40px;
                margin-top:20px;
                color:black;
                font-size: 25px;
                font-weight: bolder;
                
             }
        .box1
        {
            margin-top: 35px;
            margin-left:30px;
            height: 30px;
            width: 250px;
            font-size: 20px;
            border-color: red;
            border-radius: 5px;
        }
        .page4
        {
            margin-left: 20px;
            height: 20px;
            color: black;
            font-size:25px;
            
        }
        
        .box2
        {
            margin-left: 30px;
            height: 20px;
            width: 350px;
            font-size: 20px;
           }
           .page5
           {
               margin-left: 20px;
               height: 20px;
               color: black;
               font-size: 25px;
               
           }
        .box3
        {
            margin-left: 30px;
            height: 20px;
            width: 400px;
            font-size: 20px;
          }
          .page6
          {
              margin-left: 20px;
              height: 20px;
              color: black;
              font-size: 25px;
          }
          .box4
          {
              margin-left: 20px;
              height: 20px;
              width: 400px;
              font-size: 20px;
          }
        .page7
        {
            
            margin-left: 20px;
            height: 20px;
            color: black;
            font-size: 25px;
        }
        .box5
        {
            
            margin-right: 20px;
            height: 20px;
            width: 400px;
            font-size: 20px;
        }
        .page8
        {
            margin-left: 20px;
            height: 20px;
            color: black;
            font-size: 20px;
        }
        .box6
        {
            margin-left: 20px;
            height: 20px;
            width: 400px;
            font-size: 25px;
        }
        .page9
        {
            margin-left: 20px;
            height: 20px;
            color: black;
            font-size: 25px;
        }
        .box7
        {
            border-color:red;
            margin-top: 30px;
            margin-left: 20px;
            height: 30px;
            width: 150px;
            font-size: 20px;
            border-radius: 5px;
        }
        .page10
        {
            margin-left: 20px;
            height: 20px;
            color:black;
            font-size: 25px;
        }
        .box8
        {
            
            margin-left: 20px;
            height: 25px;
            width: 150px;
            font-size: 20px;
        }
        .button1
        {
            
             margin-left: 240px;
            margin-top: 60px;
            height:40px;
            width:150px;
            border-radius:10px;
            background-color: blue;
            color:white;
            border-color:black;
            font-size: 20px;
        
        }
        
        
        .button3
        {
            font-size: 20px;
            padding-left: 30px;
            margin-left: 280px;
            margin-top: 50px;
            height: 40px;
            width: 150px;
            border-radius: 10px;
            background-color: red;
            color: white;
            border-color: black;
        }
        
        .bd
        {
            background-image: url("image/p7.jpg");
            background-size: 40%;
             background-position:center;
            background-size:130%;
            background-repeat: no-repeat;
            margin-image:50px;
               background-color:  deepskyblue;                             
             
      
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
          <li><a href="user_homepage.jsp">Home</a></li>
          <li><a href="user_courier_information.jsp">Add Courier</a></li> 
          <li><a href="user_courier_list.jsp">Courier List</a></li>
          <li><a href="user_tracking.jsp">Tracking</a></li>
          <li><a href="user_feedback.jsp">Feedback</a></li>
          <li><a href="user_login.jsp">Logout</a></li>
                     
        </ul>
      </nav>
    </div>
       
        <div class="page">
            <div class="page1">
                <h1 class="page2">Receiver Information</h1>
            </div> 
            
            <form method="post" action="user_receiver_information">
                
                
            
               
         
            <lable class="page3">Full Name :</lable>
            <input class="box1" type="text" name="fname" placeholder=" " onkeypress="return isString(event)">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                
                
                
            <lable class="page3">Mobile No :</lable>
            <input class="box1" type="text" name="mob" placeholder=" " maxlength="10" onkeypress="return isNumber(event)"><br>
                
            
            <lable class="page3">E-mail Id :</lable>&nbsp;&nbsp; &nbsp;
            <input class="box1" type="text" name="email" placeholder=" " onkeypress="return isAlphanumric(event)">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                 
                     
                   
             <lable class="page3">Address :</lable>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
             <input class="box1" type="text" name="address" placeholder=" " onkeypress="return isString(event)"><br>    
                 
             
            
            <lable class="page3">City :</lable>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
            <input class="box1" type="text" name="city" placeholder=" " onkeypress="return isString(event)">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                 
                
           <lable class="page3">State :</lable>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
           <input class="box1" type="text" name="state" placeholder=" " onkeypress="return isString(event)"><br>
                 
             
             
           
             
          <lable class="page3">Country :</lable>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
          <input class="box1" type="text" name="country" placeholder=" " onkeypress="return isString(event)">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                 
          <lable class="page3">Pin Code :</lable>&nbsp;&nbsp;&nbsp;
          <input class="box1"  type="text" name="pincode" placeholder=" " maxlength="6" onkeypress="return isNumber(event)">
               
             
            
            
            <input type="submit"  class="button1" name="submit" value="Save">
             <input type="submit" class="button3" name="submit" value="Delete" >
            </form>
        </div>
        
        
          <div class="footer">
         
      </div>
    </body>
</html>
