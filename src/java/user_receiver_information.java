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
public class user_receiver_information extends HttpServlet
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
        String mob = req.getParameter("mob");
        String email = req.getParameter("email");
        
        String address = req.getParameter("address");
       
        String city = req.getParameter("city");
        String state = req.getParameter("state");
        String country = req.getParameter("country");
        String pincode = req.getParameter("pincode");
        
        
        String event = req.getParameter("submit");
        
          
        out.println(fname);
        out.println(mob);
        out.println(email);
        out.println(address);
        out.println(city);
        out.println(state);
        out.println(country);
        out.println(pincode);
        
         if(event.equals("Save"))
        {
            
        if(fname.equals("")||mob.equals("")||email.equals("")||address.equals("")||city.equals("")||state.equals("")||country.equals("")||pincode.equals(""))
        {
            resp.setContentType("text/html");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('some fields Are Empty')");
               out.println("location='user_receiver.jsp'");
               out.println("</script>");
        }
        
        else
        {
             try
                  {
            
                  String insert = db.Insert("insert into user_reciver_information(fname,mob,email,address,city,state,country,pincode)values('"+fname.toString()+"','"+mob.toString()+"','"+email.toString()+"','"+address.toString()+"','"+city.toString()+"','"+state.toString()+"','"+country.toString()+"','"+pincode.toString()+"')");
                  out.println(insert);
                  
                  
                       resp.setContentType("text/html");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('"+insert+"');");
                        out.println("location='user_payment.jsp';");
                        out.println("</script>");
              
                  }
                 catch(Exception ex)
                 {
                        out.println(ex.toString());
                        resp.setContentType("text/html");
                       out.println("<script type=\"text/javascript\">");
                       out.println("alert('"+ex.toString()+"');");
                       out.println("location='user_receiver.jsp';");
                       out.println("</script>");
                  
                 }
           
        }
    }   
        
        
 
           if(event.equals("Delete"))
        {
              String delete=db.delete("delete from user_reciver_information where fname=('"+fname+"')");
          out.println(delete);
           resp.setContentType("text/html");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('"+delete+"');");
               out.println("location='user_courier_information.jsp'");
               out.println("</script>");
               
            
        }
        
    
}


}

