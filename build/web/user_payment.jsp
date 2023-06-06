<%-- 
    Document   : user_payment
    Created on : 3 Mar, 2022, 11:19:51 PM
    Author     : Ashvagandha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user_payment</title>
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
      
       .form
        {
            height: 500px;
            width: 500px;
            background-color:whitesmoke;
            box-shadow: 7px 5px 7px 5px grey;
            border-color:white;
            border-radius: 20px;
            margin-left:400px;
            margin-top: 20px;
        }
      
         .form1
        {
            height: 80px;
            width: 500px;
            background-color: mediumseagreen;
            box-shadow: 5px 3px 3px grey;
            border-color:white;
            border-radius: 10px;
            
        }
        
        
      .page1
        {
            font-family: sans-serif;
            font-size: 50px;
            color: white;
            padding-left: 155px;
            padding-top: 20px;
            color: white;
            font-weight: bolder;
        }
      
        .page2
        {
            font-size: 20px;
            color: white;
            padding-left: 35px;
            padding-top: 20px;
            color:black;
            font-weight: bolder;
        }
      .box1
      {
          height: 30px;
          width: 150px;
          margin-top: 30px;
          font-size: 15px;
          padding-left:15px;
          border-color: red;
          border-radius: 5px;
          color: blue;
          
          
      }
      
      .button1
      {
        height: 40px;
        width: 250px;
        font-weight: bolder;
        background-color: green;
        color: white;
        margin-left: 140px;
        margin-top: 35px;
        border-radius: 5px;
        font-size: 25px;
        
          
          
          
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
  
   <script type="text/javascript">
     window.onload = function(){  
          var price = document.getElementById('price').value; 
          
          var result=  (parseInt(price)*18)/100;
          var r1 = parseInt(result)+parseInt(price);
          
          if(!isNaN(result))
              {
                  document.getElementById("amount").value = r1;
                  
              }
     }
       
  </script>
  
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
        
        
        <div class="form" >
             <form method="post" action="user_payment">
             <div class="form1">
            <h1 class="page1">Payment</h1>
            
             </div>
            
             
             <lable  class="page2">Payment Mode : </lable> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <select class="box1" name="pmode" >
                 <option>    Payment Option </option>
                <option> COD </option> 
                <option> UPI </option>
                <option> Credit Card </option>
                
           
            </select> <br>
            
             <lable class="page2">price :</lable>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <input class="box1" type="text" name="price" id="price" placeholder=""  value="<%=session.getAttribute("price")%>" >
            
            <lable class="page2">Quantity :</lable>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input class="box1" type="text" name="quantity" id="quantity" placeholder=""  value="<%=session.getAttribute("quantity")%>" ><br>
            
            <lable class="page2">Tax :</lable>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input class="box1" type="text" name="tax" placeholder="" value="18" disabled=""><br>
            
            <lable class="page2"> Amount :</lable>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input class="box1" type="text" name="amount" placeholder=""  id="amount">
            
            
            <input type="Submit" class="button1" name="submit" value="Submit">
             </form>
        </div>
        
          <div class="footer">
          
      </div>
        
    </body>
</html>
