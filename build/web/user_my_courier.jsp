<%-- 
    Document   : user_my_courier
    Created on : 24 Feb, 2022, 12:00:14 AM
    Author     : Ashvagandha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user_my_courier</title>
    </head>
    
    
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
    margin-top: 710px;
    
}

.flat-table {
  display: block;
  font-family: sans-serif;
  -webkit-font-smoothing: antialiased;
  font-size: 115%;
  overflow: auto;
  width: auto;
  height: auto;
  margin-top: 10px;
  margin-left: 50px;
  font-size: 15px;
}
  
  th {
    background-color: black;
    color: white;
    font-weight: normal;
    padding: 10px 20px;
    text-align: center;
  }
  td {
    background-color: rgb(238, 238, 238);
    color: rgb(111, 111, 111);
    padding: 10px 20px;
  }
  


    </style>
    
    
    <body>
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
        
        
        <table class="flat-table">
  <tbody>
    <tr>
      <th>Head 1</th>
      <th>Head 2</th>
      <th>Head 3</th>
      <th>Head 4</th>
      <th>Head 5</th>
      <th>Head 1</th>
      <th>Head 2</th>
      <th>Head 3</th>
      <th>Head 4</th>
      <th>Head 5</th>
    </tr>
    <tr>
      <td>Example 1</td>
      <td>Example 2</td>
      <td>Example 3</td>
      <td>Example 4</td>
      <td>Example 5</td>
      <td>Example 1</td>
      <td>Example 2</td>
      <td>Example 3</td>
      <td>Example 4</td>
      <td>Example 5</td>
    </tr>
    <tr>
      <td>Example 6</td>
      <td>Example 7</td>
      <td>Example 8</td>
      <td>Example 9</td>
      <td>Example 10</td>
      <td>Example 6</td>
      <td>Example 7</td>
      <td>Example 8</td>
      <td>Example 9</td>
      <td>Example 10</td>
    </tr>
  </tbody>
	</table>
        
        
         <div class="footer">
          
      </div>
    </body>
</html>
