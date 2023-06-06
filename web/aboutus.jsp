<%-- 
    Document   : aboutus
    Created on : 31 Mar, 2022, 12:45:29 AM
    Author     : Ashvagandha
--%>

<html>
 <head>
   <title>Aboutus</title>
       <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
   <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


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
  font-size:40px;
  padding: 0 150px;
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
.img{
     background-image: url("image/bg1.jpg");
            background-size: 40%;
             background-position:right;
            background-size:120%;
            background-repeat: no-repeat;
            margin-image:50px;
            
               height:500px;
               width:100%;
                
    }
 .about
 {
    height:300px;
    width:1220px;
    background-color: lemonchiffon;
    color:black;
    padding-left:150px;
    padding-right:150px;
    font-size:20px;
    
 }
 .title
 {
     color: black;
    text-align:center;
    font-size:30px;
    padding-top:10px;
    font-weight: bolder;
     
 }
 
 
.location
{
  padding-left:300px; 
  padding-top:50px;
  background-color:white;
  height:155px;
}

.footer
{
    padding:5px 20px;
    background-color:#000;
    text-align:right;
    color:#fff;
    font-size:15px;
    height:25px;
    line-height:30px;
    
}
.v
{
    padding-right: 10px;
    font-size: 20px;
    
}
</style>


  </head>
  <body class="bd">
        
    
    <div id="container">

      <nav>
        <div id="logo">
          ONLINE COURIER...!
        </div>
        <ul>
          <li><a href="homepage.jsp">Home</a></li>
          <li><a href="admin_login.jsp">Admin</a></li> 
          <li><a href="branch_login_page.jsp">Branch</a></li>
          <li><a href="user_login.jsp">User</a></li>
       
      
           
                     
        </ul>
      </nav>
    </div>
      <div class="img">
          </div>
      <div class="about">
          <p class="title">About Us</p><br><br>
          <h4 class="v"> We are a courier tracking service that is on the mission to provide you with the best online tracking facility.<br>
              Here we ensure to offer the speedy delivery and reliable shipping available in the town.<br>
You must have gone through the pain of staying uninformed and getting wage information about the time and day of when your deliveries are coming.<br>
This can affect your work schedules and busy routine.
But with us, you need not bear any hassle of this type anymore.<br> 
You can effortlessly adapt our utility that goes well with both your time and effort saving.
You