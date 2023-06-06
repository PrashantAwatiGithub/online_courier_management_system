/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Prashant
 */
public class admin_login extends HttpServlet {

    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
        Database db = new Database();
        String result = db.Connectdb();
        System.out.println(result);
        
        HttpSession session = req.getSession();
        PrintWriter out = resp.getWriter();
        
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        
        String event = req.getParameter("submit");
        
        out.println(email);
        out.println(pass);
       
        
        
        
        
        if (event.equals("Log In"))
     {
      if(email.equals("")||pass.equals(""))
      {
         resp.setContentType("text/html");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('some fields Are Empty')");
               out.println("location='admin_login.jsp';");
               out.println("</script>");
      }
      else
      {
          
          try
          {
          Class.forName("com.mysql.jdbc.Driver");
          cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_courier","root","root");
          st=cn.createStatement();
          String sql="select * from admin_signup where emailid='"+email.toString()+"' and passaword = '"+pass.toString()+"' ";
          ResultSet rs = st.executeQuery(sql);
          if(rs.next())
           
          
          {               
                          session.setAttribute("admin_id", rs.getString("admin_id"));
                          
                          resp.setContentType("text/html");
                    
                          out.println("<script type=\"text/javascript\">  ");
                          out.println("alert('Login Successfull !');  ");
                          out.println("location='admin_home_page.jsp';");
                          out.println("</script>");
              
          }
                
              else
           {
                resp.setContentType("text/html");
                    
                          out.println("<script type=\"text/javascript\">");
                          out.println("alert('Login Failed !');");
                          out.println("location='admin_login.jsp';");
                          out.println("</script>");
               
           }
           
           
        }
          catch(Exception ex)
             
              
          {
              out.println(ex.toString());
          }
    
        
        if(event.equals("Create New Account"))
        {
            
            resp.sendRedirect("admin_signup.jsp");
        }
            
        
    }

     }
        
        
        
        if(event.equals("Sign Up"))
        {
            resp.sendRedirect("admin_signup.jsp");
        }
        
        
    }
}