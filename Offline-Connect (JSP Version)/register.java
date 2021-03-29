 @WebServlet("/register")
 package demotest;
import java.io.IOException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
/**
 * Servlet implementation class register
 */
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String email= request.getParameter("email");
		String password = request.getParameter("pass");
		String passwordRe = request.getParameter("re_pass");
		String org = request.getParameter("org");
		
		
		if(name.isEmpty() || email.isEmpty() || password.isEmpty() || 
				passwordRe.isEmpty() || org.isEmpty() )
		{
			RequestDispatcher req = request.getRequestDispatcher("signup.jsp");
			req.include(request, response);
		}
		else
		{
			RequestDispatcher req = request.getRequestDispatcher("dashboard1.jsp");
			req.forward(request, response);
		}
	}
 
}