<%-- 
    Document   : user_courier_details
    Created on : 6 May, 2022, 9:25:16 AM
    Author     : Ashvagandha
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user_courier_details</title>
   
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
  font-weight: bolder;
  padding: 0 70px;
  color:white;
  font-family: serif;
  width:40%;
  letter-spacing:2px;
  
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
           background-color:whitesmoke;
            height: 550px;
            width: 1000px;
            margin-left: 150px;
            margin-top:10px;
            border-radius: 20px;
            border: 14px;
            box-shadow: 5px 5px 10px grey;
      }
      
      .form1
      {
           background-color: blueviolet;
            height: 90px;
            width: 1000px;
            font-size:50px;
            margin-top:20px;
            border-radius: 10px;
            padding-left:-45px;
            
      }
       .text1
      {
          padding-left: 400px;
          color: black;
          padding-top: 35px;
          font-size: 50px;
          font-weight: bolder;
          
      }
      
      .text2
      {
          padding-left: 40px;
          color: black;
          padding-top: 35px;
          font-size: 25px;
          font-weight: bolder;
          
      }
      
      .box1
      {
          margin-top: 15px;
            margin-left:60px;
            height: 40px;
            width: 250px;
            font-size: 25px;
            border-color: red;
            border-radius: 5px;
            border-color: red;
      }
      
      .button
      {
          margin-left: 35px;
            margin-top: 50px;
            height:40px;
            width:230px;
            border-radius:20px;
            background-color: blue;
            color:white;
            font-weight: bolder;
            font-size: 25px;
            box-shadow: 5px 5px 2.5px grey;
        
      }
      
      .button1
      {
            margin-left: 400px;
            margin-top: 40px;
            height:40px;
            width:230px;
            border-radius:20px;
            background-color: blue;
            color:white;
            font-weight: bolder;
            font-size: 25px;
            box-shadow: 5px 5px 2.5px grey;
      }
      
      
      .button2
      {
            margin-left: 60px;
           
            height:40px;
            width:230px;
            border-radius:20px;
            background-color: green;
            color:white;
            font-weight: bolder;
            font-size: 25px;
            box-shadow: 5px 5px 2.5px grey;
      }
      
      .button3
      {
            margin-left: 90px;
           
            height:40px;
            width:230px;
            border-radius:20px;
            background-color: red;
            color:white;
            font-weight: bolder;
            font-size: 25px;
            box-shadow: 5px 5px 2.5px grey;
      }
      
      .bd
        {
            background-image: url("image/p7.jpg"); 
            background-size: 40%;
             background-position:right;
            background-size:110%;
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
          <li><a href="user_courier_information.jsp">Add Courier </a></li>
          <li><a href="user_courier_list.jsp">Courier List</a></li>
           <li><a href="user_tracking.jsp">Tracking</a></li>
          <li><a href="user_feedback.jsp">Feedback</a></li>
          <li><a href="user_homepage.jsp">Logout</a></li>

             
                     
        </ul>
      </nav>
    </div>
        
         <div class="form">
             <div class="form1">
                <h1 class="text1">Courier Details</h1>  
             </div>
             
              <% 
        Connection cn = null;
        Statement st = null;
        
        String consignmentno = "";
        String deliveredid = "";
        String bookingdate="";
        String bookingmode="";
        String weight="";
        String quantity="";
        String parceltype="";
        String price="";
        String status="";
        String date="";
        String address="";

        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_courier","root","root");
        st=cn.createStatement();
        
        String sql="select * from user_courier_information where consignmentno='"+session.getAttribute("consignmentno") +"' ";
        ResultSet rs = st.executeQuery(sql);
        
        while(rs.next())
        {
            consignmentno=rs.getString("consignmentno");
            deliveredid=rs.getString("deliveredid");
            bookingdate=rs.getString("bookingdate");
            bookingmode=rs.getString("bookingmode");
            weight=rs.getString("weight");
            quantity=rs.getString("quantity");
             parceltype=rs.getString("parceltype");
            price=rs.getString("price");
            status=rs.getString("status");
            date=rs.getString("date");
            address=rs.getString("address");
            
         }
        
  %>  
          
             <form method="post" action="branch_courier_details">
                
            <div class="row">
                        <div class="col-sm-6">
                            <br> <lable class="text2">Booking Date : <%=consignmentno%></lable>
                            </div>
                   <div class="col-sm-6">
                       <br><lable class="text2">Booking Date : <%=bookingdate%></lable>
                   </div>
                 </div>
           
            <div class="row">
            <div class="col-sm-6">
                <br><lable class="text2">Booking Mode : <%=bookingmode%></lable>
                 </div>
                
                 <div class="col-sm-6">
                     <br> <lable class="text2">Weight : <%=weight%></lable>
                 </div>
            </div>
          
                 
            <div class="row">
            <div class="col-sm-6">
                <br> <lable class="text2">Quantity : <%=quantity%></lable>
            </div>
             <div class="col-sm-6">
                 <br><lable class="text2">Parcel Type : <%=parceltype%></lable>
             </div>
            </div>
                 
                 <div class="row">
            <div class="col-sm-6"> 
                <br><lable class="text2">Price : <%=price%></lable>
            </div>
                <div class="col-sm-6">  
                    <br> <lable class="text2">Status : <%=status%></lable>
                </div>
            </div>
             
              <div class="row">
            <div class="col-sm-6">
                <br> <lable class="text2">Date : <%=date%></lable>
            </div>
            <br>
             <div class="col-sm-6">
             <lable class="text2">Address : <%=address%></lable> 
             </div>
              </div>
            
               
        
               
                 
                 
             </form>
        </div>
        <div class="footer">
          
      </div>
       
    </body>
</html>
