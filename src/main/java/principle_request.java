

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

/**
 * Servlet implementation class principle_request
 */
public class principle_request extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
    	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	  
    	 Connection cn =null;
    	Statement st=null;
    	 PrintWriter out = resp.getWriter();
    	 HttpSession session = req.getSession();
    	 
    	 Database db = new Database();
    	 String result = db.Connectdb();
    	 out.println(result);
    	 
    	 
    	 String id=req.getParameter("id");
    	 String event = req.getParameter("submit");
    	 
    	 
    	 out.println(id);
    	 out.println(event);
    	 
    	 if(event.equals("Accept"))
    	 {
    		 try
    		 {
    			 String sql = "update apply_leave set status= 'Accepted' where  id='"+id+"'  ";
    			 String update =db.update(sql);
    			 out.println(update);
    			 
    			 resp.setContentType("text/html");
    			 out.println("<script type=\"text/javascript\">");
    			 out.println("alert('Apply_leave Successfull')");
    			 out.println("location= 'Principle_Request.jsp'");
    			 out.println("</script>");
    			 
    		 }
    		 catch(Exception ex)
    		 {
    			 out.println(ex.toString());
    		 }
    	 }
    	 
    	 
    	 if(event.equals("Deny"))
    	 {
    		 try
    		 {
    			 String sql = "update apply_leave set status= 'cancel' where id='"+id+"'  ";
    			 String update =db.update(sql);
    			 out.println(update);
    			 
    			 resp.setContentType("text/html");
    			 out.println("<script type=\"text/javascript\">");
    			 out.println("alert('Apply_leave Successfull')");
    			 out.println("location= 'Principle_Request.jsp'");
    			 out.println("</script>");
    			 
    		 }
    		 catch(Exception ex)
    		 {
    			 out.println(ex.toString());
    		 }
	
	}
    }
	 

}
