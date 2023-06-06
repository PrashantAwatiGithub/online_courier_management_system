<%-- 
    Document   : admin_tracking_view
    Created on : 4 May, 2022, 10:06:18 PM
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
        <title>admin_tracking_view</title>
    </head>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  
   
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
  font-size: 125%;
  overflow: auto;
  width: auto;
  height: auto;
  margin-top: 40px;
  margin-left: 10px;
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
     
      <th>Booking Date</th>
      <th>Booking Mode</th>
      <th>Weight</th>
      <th>Quantity</th>
      <th>Parcel Type</th>
      <th>Price</th>
      <th>Branch Id</th>
      <th>Address</th>
      <th>Date</th>
      <th>Status</th>
      
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
        String branchid="";
        String address="";
        String date="";
        String status="";

        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_courier","root","root");
        st=cn.createStatement();
        
        String sql="select * from tracking where consignmentno='"+session.getAttribute("consignmentno")+"' ";
        ResultSet rs = st.executeQuery(sql);
        
        while(rs.next())
        {
            consignmentno=rs.getString("consignmentno"); 
            bookingdate=rs.getString("bookingdate");
            bookingmode=rs.getString("bookingmode");
            weight=rs.getString("weight");
            quantity=rs.getString("quantity");
             parceltype=rs.getString("parceltype");
            price=rs.getString("price");
            branchid=rs.getString("branchid");
            address=rs.getString("address");
            date=rs.getString("date");
            status=rs.getString("status");
            
        
        
  %>  
       
   <tr>
      <td><%=consignmentno%></td>
      <td><%=bookingdate%></td>
      <td><%=bookingmode%></td>
      <td><%=weight%></td>
      <td><%=quantity%></td>
      <td><%=parceltype%></td>
      <td><%=price%></td>
      <td><%=branchid%></td>
      <td><%=address%></td>
      <td><%=date%></td>
      <td><%=status%></td>
        
    </tr>
   <% } %> 
   
  </tbody>
	</table>
        
    
         <div class="footer">
         
      </div>
        
        
        
  
    </body>
</html>
