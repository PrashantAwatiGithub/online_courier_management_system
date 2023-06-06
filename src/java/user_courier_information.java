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
public class user_courier_information extends HttpServlet {

  Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Database db = new Database();
        String result = db.Connectdb();
        System.out.println(result);
        
        HttpSession session =req.getSession();
        PrintWriter out = resp.getWriter();
        
    String consignmentno = req.getParameter("consignmentno");
        String deliveredid = req.getParameter("deliveredid");
       
        
          String parceltype = req.getParameter("parceltype");
        String bookingdate = req.getParameter("bookingdate");
        String weight = req.getParameter("weight");
        
         String price = req.getParameter("price");
        String quantity = req.getParameter("quantity");
        String bookingmode = req.getParameter("bookingmode");
        
       java.sql.Date date1=new java.sql.Date(System.currentTimeMillis());
       String date=String.valueOf(date1);     

        
        
        String event = req.getParameter("submit");
        
        
        out.println(consignmentno);
        out.println(deliveredid);
        out.println(parceltype);
        out.println(bookingdate);
        out.println(weight);
        out.println(price);
        out.println(quantity);
        out.println(bookingmode);
         
       
 
        if(event.equals("Save"))
        {
            if(consignmentno.equals("")||deliveredid.equals("")||parceltype.equals("")||bookingdate.equals("")||weight.equals("")||price.equals("")||quantity.equals("")||bookingmode.equals(""))
            {
                resp.setContentType("text/html");
                   out.println("<script type=\"text/javascript\">");
                   out.println("alert('some fields Are Empty')");
                   out.println("location='user_courier_information.jsp'");
                   out.println("</script>");
            }
        
           else
            {
                try
                {
                    
                        session.setAttribute("price", price);
                        session.setAttribute("quantity", quantity); 
                    
                        String insert = db.Insert("insert into user_courier_information (user_id,consignmentno,deliveredid,parceltype,bookingdate,weight,price,quantity,bookingmode,status,date) values ('"+session.getAttribute("user_id")+"','"+consignmentno.toString()+"','"+deliveredid.toString()+"','"+parceltype.toString()+"','"+date.toString()+"','"+weight.toString()+"','"+price.toString()+"','"+quantity.toString()+"','"+bookingmode.toString()+"','pending','"+date.toString()+"')");
                        out.println(insert);
                        
                        String insert1 = db.Insert("insert into tracking (user_id, consignmentno, bookingdate, bookingmode, weight, quantity, parceltype, price, status , date) values ('"+session.getAttribute("user_id")+"','"+consignmentno.toString()+"', '"+date.toString()+"', '"+bookingmode.toString()+"', '"+weight.toString()+"', '"+quantity.toString()+"', '"+parceltype.toString()+"', '"+price.toString()+"', 'pending', '"+date.toString()+"')");
                        out.println(insert1);
                        
                           
                           resp.setContentType("text/html");
                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('"+insert+"');");
                            out.println("location='user_receiver_information.jsp';");
                            out.println("</script>");
                  }
                   catch(Exception ex)
                     {
                            out.println(ex.toString());
                            resp.setContentType("text/html");
                           out.println("<script type=\"text/javascript\">");
                           out.println("alert('"+ex.toString()+"');");
                           out.println("location='user_courier_information.jsp';");
                           out.println("</script>");

                   }

            }
        
        }
        
        
        
         if(event.equals("Update"))
        {
            
                    if(consignmentno.equals("")||deliveredid.equals("")||parceltype.equals("")||bookingdate.equals("")||weight.equals("")||price.equals("")||quantity.equals("")||bookingmode.equals(""))
                {
                    resp.setContentType("text/html");
                       out.println("<script type=\"text/javascript\">");
                       out.println("alert('some fields Are Empty')");
                       out.println("location='user_courier_information.jsp'");
                       out.println("</script>");
                }
                else
                 {
                    try
                    {
                     String update= db.update("update user_courier_information set deliveredid='"+deliveredid.toString()+"',parceltype='"+parceltype.toString()+"',bookingdate='"+bookingdate.toString()+"',weight='"+weight.toString()+"',price='"+price.toString()+"',quantity='"+quantity.toString()+"',bookingmode='"+bookingmode.toString()+"', where consignmentno=('"+consignmentno+"')");

                       out.println(update);
                       resp.setContentType("text/html");
                       out.println("<script type=\"text/javascript\">");
                       out.println("alert('"+update+"');");
                       out.println("location='user_courier_information.jsp'");
                       out.println("</script>");

                    }
                    catch(Exception ex)
                    {
                               out.println(ex.toString());
                               resp.setContentType("text/html");
                               out.println("<script type=\"text/javascript\">");
                               out.println("alert('"+ex.toString()+"');");
                               out.println("location='user_courier_information.jsp';");
                               out.println("</script>");

                    }

                }
        }
           if(event.equals("Delete"))
        {
          String delete=db.delete("delete from user_courier_information where consignmentno=('"+consignmentno+"')");
          out.println(delete);
           resp.setContentType("text/html");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('"+delete+"');");
               out.println("location='user_courier_information.jsp'");
               out.println("</script>");
               
            
        }
    }
    
}
       
    
// consignmentno.setText(db.search("select * from user_courier_information","consignmentno"));