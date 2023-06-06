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
public class user_payment extends HttpServlet {

    
     Connection cn = null;
    Statement st = null;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Database db = new Database();
        String result = db.Connectdb();
        System.out.println(result);
        
     PrintWriter out = resp.getWriter();
     HttpSession session = req.getSession();
     
      String pmode = req.getParameter("pmode");
       String quantity = req.getParameter("quantity");
        String price = req.getParameter("price"); 
        String amount = req.getParameter("amount");
        
         String event = req.getParameter("submit");
        
         out.println(pmode);
          out.println(quantity);
           out.println(price); 
        out.println(amount);
        
        
        
        if(event.equals("Submit"))
        {
            if(pmode.equals("")||quantity.equals("")||price.equals("") ||amount.equals(""))
            {
                
                 resp.setContentType("text/html");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('some fields Are Empty')");
               out.println("location='user_payment.jsp'");
               out.println("</script>");
            }
            else
            {
                 try
                  {
            
                        String insert = db.Insert("insert into user_payment(user_id,pmode,quantity,price,tax,amount)values('"+session.getAttribute("user_id")+"','"+pmode.toString()+"','"+quantity.toString()+"','"+price.toString()+"','18','"+amount.toString()+"')");
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
                       out.println("location='user_payment.jsp';");
                       out.println("</script>");
                  
                 }
            }
        }   
        
    }  
}
