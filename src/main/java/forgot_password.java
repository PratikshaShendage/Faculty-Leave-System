

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class forgot_password
 */
public class forgot_password extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		Connection cn = null;
		Statement st = null;
		
		
		HttpSession session = req.getSession();
	    PrintWriter out = resp.getWriter();
	    Database db = new Database();
	    String result = db.Connectdb();
	    out.println(result); 
	    
	    
	    String E_Mail = req.getParameter("E_Mail");
		String password = req.getParameter("password");
		String Conform_password = req.getParameter("Conform_password");
	 	String event = req.getParameter("submit"); 
		
	 	out.println(E_Mail);
		out.println(password);
		out.println(Conform_password);
		out.println(event);
		
		
		
		if(event.equals("Submit"))
		{
			try 
			{
				String sql ="update signup set  email= '"+E_Mail+"', password='"+password+"', confirm_password ='"+Conform_password+"' where  email= '"+E_Mail+"' ";
			    String Upadate = db.update(sql);
			    out.println(Upadate);
			     
			    resp.setContentType("text/html");
				out.println("<script type = \"text/javascript\">");
				out.println("alert ('password update');");
				out.println("location='Login_Page.jsp';");
				out.println("</script>");
						
			     
			
			}
			catch(Exception ex)
			
			{
				out.println(ex.toString()); 
				
			}
			
		}
		
		
		
		}
   
	

}
