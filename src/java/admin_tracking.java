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
public class admin_tracking extends HttpServlet
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
       
       
        String consignmentno = req.getParameter("consignmentno");
        
        String event = req.getParameter("submit");


       
       
       out.println(consignmentno);
       
        if(event.equals("Track"))
        {
         if(consignmentno.equals(""))
             {
                 resp.setContentType("text/html");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('some fields Are Empty')");
               out.println("location='admin_tracking.jsp'");
               out.println("</script>");
             }
         
          else
        {
            try
            {
            String insert = db.Insert("insert into admin_tracking (conssignmentno) values ('"+consignmentno.toString()+"')");
                
             out.println(insert);
                  
                  
                       resp.setContentType("text/html");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('"+insert+"');");
                        out.println("location='admin_courier_list.jsp';");
                        out.println("</script>");
              
        }
               catch(Exception ex)
                 {
                        out.println(ex.toString());
                        resp.setContentType("text/html");
                       out.println("<script type=\"text/javascript\">");
                       out.println("alert('"+ex.toString()+"');");
                       out.println("location='admin_tracking.jsp';");
                       out.println("</script>");
            
            
            
                 }
        
       
       
       
         }
         
        }
    }
}
        
        
       
       
       
    
       

