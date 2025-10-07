

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class apply_leave
 */
public class apply_leave extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	   PrintWriter out = resp.getWriter();
	   Database db = new Database();
	   String result = db.Connectdb();
	   out.println(result);
	   
	   
		String name = req.getParameter("name");
		String email= req.getParameter("email" );
     	String leave_type= req.getParameter("leave_type" );
		String duration= req.getParameter("duration" );
		String from= req.getParameter("form" );
		String date= req.getParameter("date");
		String reason= req.getParameter("reason");
		String event = req.getParameter("submit");
		
		out.println(name);
		out.println(email);
		out.println(leave_type);
		out.println(duration);
		out.println(from);
		out.println(date);
		out.println(reason);
		out.println(event);
		
		
		
		
		if(event.equals("Submit"))
		{

			if(name.equals("") || email.equals("") || leave_type.equals("") ||  duration.equals("") || from.equals("") || date.equals("") || reason.equals(""))
			{
				resp.setContentType("text/html");
				out.println("<script type = \"text/javascript\">");
				out.println("alert ('some Fields are Empty');");
				out.println("location='Apply_leave.jsp';");
				out.println("</script>");
						   
						
			}
			
			else 
			{
				try
				{
					String sql ="insert into apply_leave(name, email, leave_type, duration, form, date, reason, status) values('"+name+"', '"+email+"', '"+leave_type+"', '"+duration+"','"+from+"','"+date+"','"+reason+"', 'Pending') ";
				    String insert= db.Insert(sql);
				    out.println(insert);
				     
				        resp.setContentType("text/html");
						out.println("<script type = \"text/javascript\">");
						out.println("alert ('Apply Leave Successfully');");
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

}








