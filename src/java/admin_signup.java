/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Prashant
 */
public class admin_signup extends HttpServlet
{

    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
       Database db = new Database();
       String result = db.Connectdb();
       System.out.println(result);
       
       
       PrintWriter out = resp.getWriter();
       
       String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String dob = req.getParameter("dob");
        
        String mob = req.getParameter("mob");
       
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        String conf = req.getParameter("conf");
        
        String event = req.getParameter("submit");
        
         out.println(fname);
        out.println(lname);
        out.println(dob);
        out.println(mob);
        out.println(email);
        out.println(pass);
        out.println(conf);
       
       
      if(event.equals("Submit"))
        {
        if(fname.equals("")||lname.equals("")||dob.equals("")|| mob.equals("")||email.equals("")||pass.equals("")||conf.equals(""))
            {
               resp.setContentType("text/html");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('some fields Are Empty')");
               out.println("location='admin_signup.jsp'");
               out.println("</script>");
            }
            else
        {
            
            try
            {
            String insert = db.Insert("insert into admin_signup(fristname,lastname,dateofbirth,mobileno,emailid,passaword,confirm_password) values('"+fname.toString()+"','"+lname.toString()+"','"+dob.toString()+"','"+mob.toString()+"','"+email.toString()+"','"+pass.toString()+"','"+conf.toString()+"')");
              out.println(insert);
                resp.setContentType("text/html");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('"+insert+"');");
                        out.println("location='admin_login.jsp';");
                        out.println("</script>");
              
             }
                 catch(Exception ex)
                 {
                        out.println(ex.toString());
                        resp.setContentType("text/html");
                       out.println("<script type=\"text/javascript\">");
                       out.println("alert('"+ex.toString()+"');");
                       out.println("location='admin_signup.jsp';");
                       out.println("</script>");
                  
                 }
            
            
        
        
        }
        
        }
          
        
         if(event.equals("Cancel"))
        {
        
               
                        resp.sendRedirect("admin_home_page.jsp");

        } 
       
       
    }
       
}
