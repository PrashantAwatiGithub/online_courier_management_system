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
public class user_courier_list extends HttpServlet
{

    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
       HttpSession session = req.getSession();
       Database db = new Database();
       String result = db.Connectdb();
       System.out.println(result);
       
       
       PrintWriter out = resp.getWriter();
       
       String status = req.getParameter("status");
       String consignmentno = req.getParameter("consignmentno");
       String event= req.getParameter("submit");
       
       if(event.equals("Details"))
       {
           session.setAttribute("consignmentno",consignmentno); 
           
           resp.sendRedirect("user_courier_details.jsp");
       }
        
       if(event.equals("Track"))
       {
           session.setAttribute("consignmentno",consignmentno); 
           
           resp.sendRedirect("user_tracking_view.jsp");
       }
       
    }
       
}
