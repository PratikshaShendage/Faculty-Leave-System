

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
 * Servlet implementation class contact
 */
public class contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   Connection cn = null;
	   Statement st =null;
	   
	   HttpSession session = req.getSession();
	   PrintWriter out = resp.getWriter();
	   Database db = new Database ();
	   String result =db.Connectdb();
	   out.println(result);
	   
	   
	   String name = req.getParameter ("name");
	   String email = req.getParameter ("email");
	   String message = req.getParameter ("message");
	   String event = req.getParameter ("submit");
	   
	   
	   out.println(name);
	   out.println(email);
	   out.println(message);
	   out.println(event);
	   
	   
	   
	   if(event.equals("Submit"))
	   {
		   if(name.equals("")|| email.equals("") || message.equals(""))
		   {
			   resp.setContentType("text/html");
			  
				out.println("<script type = \"text/javascript\">");
				out.println("alert ('Error');");
				out.println("location='contact_us.jsp';");
				out.println("</script>"); 
		   }
		   else
		   {
			    try 
			    {
			    	String sql =db.Insert("insert into contact_us(name, email, message)values('"+name+"','"+email+"','"+message+"')");
			    	out.println(sql);
			    	
			    	 resp.setContentType("text/html");
					  
						out.println("<script type = \"text/javascript\">");
						out.println("alert ('Mail send successful');");
						out.println("location='contact_us.jsp';");
						out.println("</script>"); 
			    	
			    }
			    catch(Exception ex)
			    {
			    	out.println(ex.toString());
			    	
			    }
		   }
	   }
	   
	   
	   
	
	}
}
