<%-- 
    Document   : Report_view
    Created on : 13 May, 2022, 2:09:30 AM
    Author     : ASHVAGANDHA
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.Map"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="net.sf.jasperreports.engine.DefaultJasperReportsContext"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="net.sf.jasperreports.engine.*" %>
<%@ page import="net.sf.jasperreports.engine.export.*" %>
<%@ page import="net.sf.jasperreports.engine.util.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
         <title>Report_view</title>
       <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
   <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


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
    
}
</style>


  </head>
  <body style="background-image: url('image/.jpeg'); background-size: 100%;">
      
      
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
       <div class="footer">
          
      </div>
      <%
       
       String event=request.getParameter("submit");
       
       if(event!=null)
             {
           if(event.equals("User List"))
                           {
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_courier","root","root");
          
            } catch (Exception ex) {    
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("//Report//Userlist.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
           
             if(event.equals("Courier List"))
                           {
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_courier","root","root");
          
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("Report\\UserCourierInfo.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
           
           if(event.equals("Confirm Courier"))
                           {
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_courier","root","root");
          
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("Report\\Confirm_courier.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
           
            if(event.equals("Pending Courier"))
                           {
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_courier","root","root");
          
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("Report\\Pending_courier_list.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
           
           if(event.equals("Delivered Courier"))
                           {
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_courier","root","root");
          
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("Report\\Delivered_Courier_Report.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
          
           if(event.equals("Cancel Courier"))
               
                           {
              String date1=request.getParameter("Datewise_Orders");
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_courier","root","root");
          
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("Report\\Cancel_courier_Report.jasper"));//your report_name.jasper file
            HashMap parameters = new HashMap();
            parameters.put("Date", date1);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
           
         
           
                     }
        %>

  </body>
</html>