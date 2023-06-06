<%-- 
    Document   : user_courier_information
    Created on : 20 Jan, 2022, 10:59:52 PM
    Author     : Ashvagandha
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user_courier_information</title>
    </head>
    
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  
    
  
  <script src="validation.js"></script>
  
  <script type="text/javascript">
      function sum()
      {
          var weight = document.getElementById('weight').value;
          var qty = document.getElementById('qty').value;
          var result=parseInt(weight)*parseInt(qty)*50;
          
          if(!isNaN(result))
              {
                  document.getElementById("price").value = result;
                  
              }
          
      }
  </script>
  
  
  
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
         margin-top: 20px;
         height: 100px;
         width: 1200px;
         background-color: teal;
         border-radius: 10px;
         border-color: white;
        box-shadow: 0.1px 5px red;
     }
     
     .form2
      {
          margin-top: 20px;
          height: 550px;
          width: 1200px;
             background-color:whitesmoke;
          box-shadow: 7px 5px 5px 0px grey;
          border-radius: 10px;
          margin-left: 80px;
          border-color: black;
          
      }
     .page
     {
         font-size: 45px;
         color: white;
         font-weight: bolder;
        padding-left: 370px;
        padding-top: 40px;
     }
     
     .page1
        {
            padding-top: 30px;
            padding-left: 20px;
            color:black;
            font-size: 25px;
            font-weight: bolder;
                
             }
       .box1
        {
            margin-top: 40px;
            margin-left:60px;
            height: 35px;
            width: 250px;
            font-size: 20px;
            border-color: red;
            border-radius: 5px;
            border-color: red;
        }
        
        .box2
        {
            margin-top: 20px;
            margin-left:60px;
            height: 35px;
            width: 250px;
            font-size: 20px;
            border-color: red;
            border-radius: 5px;
            border-color: red;
            
            
        }
        
        .button1
        {
            font-size: 20px;
            padding-left: 10px;
            margin-left:200px;
            margin-top: 65px;
            height: 40px;
            width: 160px;
            border-radius: 10px;
            background-color: blue;
            color: white;
            border-color: black;
        }
        
        .button2
        {
            font-size: 20px;
            padding-left: 10px;
            margin-left: 145px;
            margin-top: 65px;
            height: 40px;
            width: 160px;
            border-radius: 10px;
            background-color: green;
            color: white;
            border-color: black;
        }
      
        .button3
        {
            font-size: 20px;
            padding-left: 10px;
            margin-left: 145px;
            margin-top: 65px;
            height: 40px;
            width: 160px;
            border-radius: 10px;
            background-color: red;
            color: white;
            border-color: black;
        }
      .bd
        {
            background-image: url("image/p7.jpg");
           
             background-position:right;
            background-size:140%;
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
    
   
 <%
          Connection cn = null;
          Statement st = null;
          
          String consignmentno = "";
          int var;
 
          Class.forName("com.mysql.jdbc.Driver");
          cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_courier","root","root");
          st=cn.createStatement();
          String sql1="select * from user_courier_information  ";
          ResultSet rs = st.executeQuery(sql1);
         
          while(rs.next())
          {
                consignmentno=rs.getString("consignmentno");
                
                 var = Integer.parseInt(consignmentno)+1;
                 session.setAttribute("consignmentno", var);
          }


%>
    
    
    
    
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
                <h1 class="page">Courier Information</h1>
            </div>
                
                <form method="post" action="user_courier_information">
                
                  
             <lable class="page1">Consignment No :</lable>&nbsp;&nbsp; &nbsp;
             <input class="box1" type="text"name="consignmentno" placeholder=" " maxlength="10"  value="<%=session.getAttribute("consignmentno")%>">
                 
            
           
            <lable class="page1">Delivered ID :</lable> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
            <input class="box1" type="text" name="deliveredid"placeholder=" " maxlength="10" onkeypress="return isNumber(event)">
          
               
        
            <lable class="page1">Booking Date :</lable> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input class="box1" type="date" name="bookingdate" placeholder=" " onkeypress="return isNumber(event)">
                 
                        
            
             <lable class="page1">Booking Mode </lable>&nbsp;&nbsp;&nbsp;
            <input class="box1" type="text" name="bookingmode"placeholder=" " onkeypress="return isString(event)">
                    
                        
                        
             &nbsp;&nbsp; &nbsp;&nbsp;<lable class="page1">weight :</lable> &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            <input class="box1" type="text" name="weight" id="weight"placeholder=" " onkeypress="return isNumber(event)">
                 
           
                 
             <lable class="page1">Quantity :</lable> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
             <input class="box1" type="text" id="qty" name="quantity" placeholder=" " onchange="sum()"><br>
                
                    
            <lable class="page1">Parcel Type :</lable> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
             <select class="box1"name="parceltype" onkeypress="return isString(event)" > 
                 <option>     </option>
                <option> Commercial</option> 
                <option> Non-Commercial</option>
           
            </select>  &nbsp;&nbsp; &nbsp;&nbsp; 
                
                        
            
             <lable class="page1">Price :</lable> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
             <input class="box1" type="text" name="price" id="price" placeholder=" "  >
                    
            
        <input type="submit"  class="button1"name="submit" value="Save">
             <input type="submit"  class="button2"name="submit" value="Update">
             <input type="submit" class="button3" name="submit" value="Delete" >
                </form>
            </div>
        
            
          
        <div class="footer">
         
      </div>
             
        
    </body>
</html>
