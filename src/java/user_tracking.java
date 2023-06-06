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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Prashant
 */
public class user_tracking extends HttpServlet
{
  Connection cn = null;
  Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
       Database db = new Database();
       String result = db.Connectdb();
       System.out.println(result);
       
        HttpSession session = req.getSession();
        PrintWriter out = resp.getWriter();
        
        
        String consignmentno = req.getParameter("consignmentno");
        
        String event = req.getParameter("submit");


       
       
       out.println(consignmentno);
       
        if(event.equals("Track"))
        {
            session.setAttribute("consignmentno",consignmentno);
            resp.sendRedirect("user_tracking_view.jsp");
         
        }
    }
}
        
        
       
            
            
            
            
            
            
            
            
            
        
        
            
       
       
       
    
  

