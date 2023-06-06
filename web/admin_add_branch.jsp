<%-- 
    Document   : admin_add_branch
    Created on : 13 Jan, 2022, 11:34:27 PM
    Author     : Ashvagandha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin_add_branch</title>
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
       
        .prashant
        {
             background-color:whitesmoke;
            height: 600px;
            width: 600px;
            margin-left: 600px;
            margin-top:15px;
            border-radius: 20px;
            border: 14px;
            box-shadow: 5px 5px 5px 7px black;
        }
        
        
        .shubham{
            background-color: indigo;
            height: 90px;
            width: 600px;
            margin-left: 0px;
            border-radius: 20px;
           
        }
        .vishvya
        {
            padding-left:100px;
            padding-top: 20px;
            color: white;
            font-size: 35px;
            font-weight: bolder;
            padding-top:20px;
        }
        .dell
        {
           
           
            margin-left: 40px;
            margin-top: 40px;
            font-size: 20px;
            font-weight: bolder;
            
            color: black;
            
            
               
        }
        .g3
        {
            margin-left: 70px;
            margin-top: 30px;
            font-size: -25px;
            height: 35px;
            width:250px;
            color: black;
            border-radius: 5px;
            border-color: red;
        }
         .name
        {
           
           
            margin-left: 80px;
            margin-top: 80px;
            font-size: 20px;
            
            color: black;
            
            
               
        }
        .g4
        {
              margin-left: 80px;
            margin-top: 60px;
            font-size: 15px;
          height: 35px;
              width:350px;
            color: black;
        }
        .address
        {
            margin-left: 80px;
            margin-top: 80px;
            font-size: 20px;
            color: black;
        }
       .g5
        {
            margin-left: 80px;
            margin-top: 60px;
            font-size: 20px;
          height: 30px;
              width:350px;
            color: black;
            
        }
        .city
        {
            margin-left: 80px;
            margin-top: 70px;
            font-size: 20px;
            
            color: black;
        }
        .g6
        {
            margin-left: 80px;
            margin-top: 60px;
            font-size: 15px;
          height: 30px;
              width:350px;
            color: black;
            
        }
        .phone
        {
            margin-left: 80px;
            margin-top: 70px;
            font-size: 20px;
            
            color: black;
        }
        .g7
        {
           margin-left: 80px;
            margin-top: 60px;
            font-size: 15px;
          height: 30px;
              width:350px;
            color: black; 
        }
        .time
        {
            margin-left: 80px;
            margin-top: 70px;
            font-size: 20px;
            
            color: black;
        }
        .g8
        {
           margin-left: 80px;
            margin-top: 60px;
            font-size: 20px;
          height: 30px;
              width:350px;
            color: black; 
        }
        .contact
        {
            margin-left: 80px;
            margin-top: 70px;
            font-size: 20px;
            
            color: white;
        }
        .g9
        {
            margin-left: 80px;
            margin-top: 50px;
            font-size: 15px;
          height: 30px;
              width:350px;
            color: white;
            
        }
        .button1
        {
            margin-left: 70px;
            margin-top: -25px;
            height:40px;
            width:150px;
            border-radius:10px;
            background-color: mediumseagreen;
            color:white;
           font-size: 20px;
            
        }
        .button2
        {
            margin-left: 150px;
            margin-top:-25px;
            height:40px;
            width:150px;
            border-radius:10px;
            background-color: blue;
            color:white;
             font-size: 20px;
            
        }
        .button3
        { margin-left: 20px;
            margin-top: 25px;
            height:40px;
            width:150px;
            border-radius:10px;
            background-color: red;
            color:white;
             font-size: 20px;
            
        }
        
        .bd
        {
            background-image: url("image/p7.jpg");
            background-size: 40%;
             background-position:right;
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
          <li><a href="admin_user_list.jsp">User List</a></li>
          <li><a href="admin_branch_list.jsp">Branch List</a></li>
          <li><a href="admin_login.jsp">Logout</a></li>
          
                     
        </ul>
      </nav>
    </div>
    
    <body class="bd">
        
            
            <div class="prashant">  
              <div class="shubham">
               
                  <h1 class="vishvya">Branch Information</h1>
              </div>
                
                <form method="post" action="admin_add_branch">
                    
                  <lable class="dell">Branch Id:</lable>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input class="g3" type="text" name="branchid"placeholder=" " maxlength="10" onkeypress="return isNumber(event)"><br>
                  
                  <lable class="dell"> Branch Name:</lable>&nbsp&nbsp;&nbsp;
                  <input class="g3" type="text" style="margin-left:82px;" name="branchname"placeholder=" " onkeypress="return isString(event)"><br>
                 
                  <lable class="dell"> Address:</lable>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <textarea name="address" class="g3" onkeypress="return isString(event)"></textarea><br>
                  
                  <lable class="dell"> City:</lable>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input class="g3" style="margin-left:60px;" type="text"name="city" placeholder=" " onkeypress="return isString(event)"><br>
                  
                  <lable class="dell">Phone No:</lable>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input class="g3" type="text" name="phoneno"placeholder=" " maxlength="10" onkeypress="return isContactno(event)"><br>
                  
                   
                  <lable class="dell">Set Password</lable>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input class="g3" style="margin-left:80px;" type="password" name="pass"placeholder=" ">  <br>
                 
                   <br>
                 <input type="submit"  class="button1"name="submit" value="Save">
                 <input type="submit" class="button2" name="submit" value="Update">
                
                </form>
            </div>
        
         <div class="footer">
          <h4>Designed by :    Prashant Ananda Awati </h4>
      </div>
                </body>
</html>
