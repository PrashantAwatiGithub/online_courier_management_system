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
public class user_login extends HttpServlet {
    
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
        
        if (event.equals("Login"))
     {
            if(email.equals("")||pass.equals(""))
            {
               resp.setContentType("text/html");
                     out.println("<script type=\"text/javascript\">");
                     out.println("alert('some fields Are Empty')");
                     out.println("location='user_login.jsp'");
                     out.println("</script>");
            }
            else
            {

                try
                {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_courier","root","root");
                st=cn.createStatement();
                String sql="select * from user_signup where email='"+email.toString()+"' && pass = '"+pass.toString()+"' ";
                ResultSet rs = st.executeQuery(sql);
                if(rs.next())
                {
                                session.setAttribute("user_id", rs.getString("user_id"));
                                session.setAttribute("email",email);
                                
                                resp.setContentType("text/html");
                                out.println("<script type=\"text/javascript\">  ");
                                out.println("alert('Login Successfull !');  ");
                                out.println("location='user_homepage.jsp';");
                                out.println("</script>");

                }
                else
                {
                                resp.setContentType("text/html");
                                out.println("<script type=\"text/javascript\">");
                                out.println("alert('Login Failed !');");
                                out.println("location='user_login.jsp';");
                                   out.println("</script>");

                 }


              }
                catch(Exception ex)


                {
                    out.println(ex.toString());
                }


              if(event.equals("Create New Account"))
              {

                  resp.sendRedirect("user_signup.jsp");
              }


          }

     }
    }
}