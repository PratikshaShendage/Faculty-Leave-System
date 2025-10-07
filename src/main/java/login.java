

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
 * Servlet implementation class login
 */
public class login extends HttpServlet {
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
	    
	     
		
		String e_mail = req.getParameter("e_mail");
		String Password = req.getParameter("password");
	 	String event = req.getParameter("submit"); 
		
	
		
		out.println(e_mail);
		out.println(Password); 
		out.println(event);
		
		
		

	 if(event.equals("Login"))	
	 {
		 if(e_mail.equals("Pratiksha") &&  Password.equals("9373547736") )
		 {
			 resp.setContentType("text/html");
				out.println("<script type = \"text/javascript\">");
				out.println("alert ('Login Success');");
				out.println("location='Principle_Home.jsp';");
				out.println("</script>"); 
	     } 
		
		 else 
		 {
			
			 
			 try 
			 {
				
						 Class.forName("com.mysql.jdbc.Driver");
						 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Faculty_Leave_Management_System","root","Root");
						 String sql = " Select * from signup where email='"+e_mail+"'  && password= '"+Password+"' ";
						 st= cn.createStatement();
						 ResultSet rs = st.executeQuery(sql);
					
						 if(rs.next())
							{ 
							 	resp.setContentType("text/html");
								out.println("<script type = \"text/javascript\">");
								out.println("alert ('Login Success');");
								out.println("location='Faculty_home.jsp';");
								out.println("</script>"); 
								
								 
							}
							else 
							{ 
								resp.setContentType("text/html");
								out.println("<script type = \"text/javascript\">");
								out.println("alert ('Login Failed');");
								out.println("location='Login_Page.jsp';");
								out.println("</script>"); 
							}
			 
			}
			catch(Exception ex)
			{
				out.println(ex.toString());
			}
		
		
	}
}
   }
}
   
   
