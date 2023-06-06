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
public class branch_courier_details extends HttpServlet
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
       
       
       
        String branchname = req.getParameter("branchname");
        String address = req.getParameter("address");
        String status = req.getParameter("status");
        String consignmentno = req.getParameter("consignmentno");
        String bookingdate = req.getParameter("bookingdate");
        String bookingmode = req.getParameter("bookingmode");
        String weight = req.getParameter("weight");
        String quantity = req.getParameter("quantity");
        String price = req.getParameter("price");
        String parceltype = req.getParameter("parceltype"); 
        String user_id = req.getParameter("user_id");
        
         java.sql.Date date1=new java.sql.Date(System.currentTimeMillis());
         String date=String.valueOf(date1);   
        
        String event = req.getParameter("submit");
        
        out.println(branchname);
        out.println(address);
        out.println(status);
        out.println(consignmentno);
        out.println(bookingdate);
        out.println(bookingmode);
        out.println(weight);
        out.println(quantity);
        out.println(price);
        out.println(parceltype);
        out.println(user_id);
        
        
        if(event.equals("Save"))
        {
        
           if(branchname.equals("")||address.equals("")||status.equals(""))
         {
               resp.setContentType("text/html");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('some fields Are Empty')");
               out.println("location='branch_courier_details.jsp'");
               out.println("</script>");
                
             
         }
         else
         {
             
                 try
                  {
                        String update = db.update("update user_courier_information set status='"+status.toString()+"', date='"+date.toString()+"', branch='"+branchname.toString()+"', address='"+address.toString()+"' where consignmentno='"+consignmentno+"' ");
                        out.println(update);
                        String insert = db.Insert("insert into tracking(user_id, consignmentno, bookingdate, bookingmode, weight, quantity, parceltype, price, status , date, address) values ('"+user_id+"','"+consignmentno.toString()+"', '"+bookingdate.toString()+"', '"+bookingmode.toString()+"', '"+weight.toString()+"', '"+quantity.toString()+"', '"+parceltype.toString()+"', '"+price.toString()+"', '"+status.toString()+"', '"+date.toString()+"', '"+address.toString()+"')");
                        out.println(insert);
                       
                        resp.setContentType("text/html");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('"+insert+"');");
                        out.println("location='branch_courier_details.jsp';");
                        out.println("</script>");
              
                  }
                 catch(Exception ex)
                 {
                        out.println(ex.toString());
                        resp.setContentType("text/html");
                       out.println("<script type=\"text/javascript\">");
                       out.println("alert('"+ex.toString()+"');");
                       out.println("location='branch_courier_details.jsp';");
                       out.println("</script>");
                  
                 }
            
         } 
        
        }
        
    }
       
}
