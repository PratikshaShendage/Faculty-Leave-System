

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class faculty_signup
 */
public class faculty_signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
	    PrintWriter out = resp.getWriter();
	    Database db = new Database();
	    String result = db.Connectdb();
	    out.println(result);
	    
		
		String full_name = req.getParameter("full_name");
		String e_mail= req.getParameter("e_mail" );
		String password= req.getParameter("password" );
		String mobile_no= req.getParameter("mobile_no" );
		String department= req.getParameter("department" );
		String date_of_birth= req.getParameter("date_of_birth" );
		String Conform_password = req.getParameter("Conform_password");
		String event = req.getParameter("submit");
		
		out.println(full_name);
		out.println(e_mail);
		out.println(password);
		out.println(mobile_no);
		out.println(department);
		out.println(date_of_birth);
		out.println(Conform_password);
		out.println(event);
		
		
		if(event.equals("Sign up"))
		{
			if(full_name.equals("") || e_mail.equals("") || password.equals("") ||  mobile_no.equals("") || department.equals("") || date_of_birth.equals("") || Conform_password.equals(""))
			{
				resp.setContentType("text/html");
				out.println("<script type = \"text/javascript\">");
				out.println("alert ('some Fields are Empty');");
				out.println("location='Faculty_Signup.jsp';");
				out.println("</script>");
						   
						
			}
			
			else 
			{
				try
				{
					String sql ="insert into signup(full_name, email, mobile_no, department, date_of_birth, password, confirm_password) values('"+full_name+"', '"+e_mail+"', '"+ mobile_no+"', '"+department+"','"+date_of_birth+"','"+password+"','"+Conform_password+"') ";
				    String insert= db.Insert(sql);
				    out.println(insert);
				     
				        resp.setContentType("text/html");
						out.println("<script type = \"text/javascript\">");
						out.println("alert ('Signup Successfull');");
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







