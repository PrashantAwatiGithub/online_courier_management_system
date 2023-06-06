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
public class admin_add_branch extends HttpServlet 
{

  Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        
         HttpSession session = req.getSession();
         PrintWriter out = resp.getWriter();
         
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
       
        
        String branchid = req.getParameter("branchid");
        
        String branchname = req.getParameter("branchname");
        
        String address = req.getParameter("address");
        
        String city = req.getParameter("city");
        
        String phoneno =req.getParameter("phoneno"); 
        String pass = req.getParameter("pass");
        
        String event = req.getParameter("submit");
        
        
        
        out.println(branchid);
        out.println(branchname);
        out.println(address);
        out.println(city);
        out.println(phoneno); 
        out.println(pass);
        
        
        
        if(event.equals("Save"))
        {
            if(branchid.equals("")|| branchname.equals("")|| address.equals("")|| city.equals("") || phoneno.equals("") || pass.equals(""))
            {
             resp.setContentType("text/html");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('some fields Are Empty')");
               out.println("location='admin_add_branch.jsp'");
               out.println("</script>");
      
            
            }
      else
        {
            try
            {
                          String insert = db.Insert("insert into admin_add_branch(admin_id,branchname,address,city,phoneno,pass) values('"+session.getAttribute("admin_id")+"','"+branchname.toString()+"','"+address.toString()+"','"+city.toString()+"','"+phoneno.toString()+"','"+pass.toString()+"')");
                          out.println(insert);
                          resp.setContentType("text/html");
                          out.println("<script type=\"text/javascript\">   ");
                          out.println("alert('"+insert+"');  ");
                          out.println("location='admin_add_branch.jsp';");
                          out.println("</script>  ");
              }
               catch(Exception ex)
                    
               {
                      resp.setContentType("text/html");
                    
                          out.println("<script type=\"text/javascript\">  ");
                          out.println("alert('"+ex.toString()+"');  ");
                          out.println("location='admin_add_branch.jsp';");
                          out.println("</script>  ");
                    

               }
             
             
             
        }
    }
    
        if(event.equals("Update"))
        {
            if(branchid.equals("")|| branchname.equals("")|| address.equals("")|| city.equals("") || phoneno.equals("") || pass.equals(""))
            {
             resp.setContentType("text/html");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('some fields Are Empty')");
               out.println("location='admin_add_branch.jsp'");
               out.println("</script>");
      
            
            }
            else
        {
              try
                    {
                         String update= db.update("update admin_add_branch set branchname='"+branchname.toString()+"',address='"+address.toString()+"',city='"+city.toString()+"',phoneno='"+phoneno.toString()+"',pass='"+pass.toString()+"' where branchid='"+branchid+"'");
                      
                        resp.setContentType("text/html");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('"+update+"')");
                        out.println("location='admin_add_branch.jsp'");
                        out.println("</script>");    

                    }
                    catch(Exception ex)
                    {
                               out.println(ex.toString());
                               resp.setContentType("text/html");
                               out.println("<script type=\"text/javascript\">");
                               out.println("alert('"+ex.toString()+"');");
                               out.println("location='admin_add_branch.jsp';");
                               out.println("</script>");

                    }
        }
        }
        
        }
        
    
        
        
        
}
    
    

 
    
