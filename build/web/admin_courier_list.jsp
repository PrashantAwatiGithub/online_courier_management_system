<%-- 
    Document   : admin_courier_list
    Created on : 24 Feb, 2022, 12:00:14 AM
    Author     : Ashvagandha
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin_courier_list</title>
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
  font-size:40px;
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
    padding-right: 100px;
    
}

.flat-table {
  display: block;
  font-family: sans-serif;
  -webkit-font-smoothing: antialiased;
  font-size: 110%;
  overflow: auto;
  width: auto;
  height: auto;
  margin-top: 40px;
  margin-left: 185px;
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
           <li><a href="admin_home_page.jsp">Home</a></li>
          <li><a href="admin_add_branch.jsp">Add Branch</a></li> 
          <li><a href="admin_courier_list.jsp">Courier List</a></li>
          <li><a href="admin_user_list.jsp">User List</a></li>
          <li><a href="admin_branch_list.jsp">Branch List</a></li>
          <li><a href="admin_login.jsp">Logout</a></li>
          
                     
        </ul>
      </nav>
    </div>
        
        
        <table class="flat-table">
  <tbody>
    <tr>
      <th>Consignment No</th>
      <th>Delivered ID</th>
      <th>Booking Date</th>
      <th>Booking Mode</th>
      <th>weight</th>
      <th>Quantity</th>
      <th>Parcel Type</th>
      <th>Price</th>
      <th></th>
      <th></th>
      
    </tr>
    
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

        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_courier","root","root");
        st=cn.createStatement();
        
        String sql="select * from user_courier_information where status='pending' ";
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
            
        
        
  %>  
     
  <form method="post" action="admin_courier_list">
     <tr>
     <input type="hidden" name="consignmentno" value="<%=consignmentno%>"> 
      <input type="hidden" name="status" value="<%=status%>">
      <td><%=consignmentno%></td>
      <td><%=deliveredid%></td>
      <td><%=bookingdate%></td>
      <td><%=bookingmode%></td>
      <td><%=weight%></td>
      <td><%=quantity%></td>
      <td><%=parceltype%></td>
      <td><%=price%></td>
      
      <td><input type="submit" name="submit" value="Details"> </td>
      <td><input type="submit" name="submit" value="Track"></td>
    </tr>
  </form>
     
      <%
         
   }
        
    %>
      
    
    
        
    
    
  </tbody>
	</table>
        
        
         <div class="footer">
          <h4>Designed by :    Prashant Ananda Awati </h4>
      </div>
    </body>
</html>
