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
public class user_feedback extends HttpServlet {

    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Database db = new Database();
        String result = db.Connectdb();
        System.out.println(result);
        
        
        PrintWriter out = resp.getWriter();
        
        String cname = req.getParameter("cname");
        String email = req.getParameter("email");
        String feedback = req.getParameter("feedback");
        String event = req.getParameter("submit");
        
        
        out.println(cname);
        out.println(email);
        out.println(feedback);
        
        
        
        if(event.equals("Send"))
        {
            if(cname.equals("") || email.equals("")|| feedback.equals(""))
            {
            
            resp.setContentType("text/html");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('some fields Are Empty')");
               out.println("location='user_feedback.jsp'");
               out.println("</script>");
        }
        
            else
            {
                
                  try
                  {
            
                  String insert = db.Insert("insert into user_feedback(cname,email,feedback)values('"+cname.toString()+"','"+email.toString()+"','"+feedback.toString()+"')");
                  out.println(insert);
                  
                  
                       resp.setContentType("text/html");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('"+insert+"');");
                        out.println("location='user_homepage.jsp';");
                        out.println("</script>");
              
                  }
                 catch(Exception ex)
                 {
                        out.println(ex.toString());
                        resp.setContentType("text/html");
                       out.println("<script type=\"text/javascript\">");
                       out.println("alert('"+ex.toString()+"');");
                       out.println("location='user_feedback.jsp';");
                       out.println("</script>");
                  
                 }
                
            }
    }
        
        
        
    }
    
    
    

}
