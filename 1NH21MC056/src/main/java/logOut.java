

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/logOut")
public class logOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public logOut() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false); //Fetch session object
		
		String logout = (String)session.getAttribute("userName");
		 
        if(logout!=null) //If session is not null
        {
            session.invalidate(); //removes all session attributes bound to the session
            request.setAttribute("errMessage", "You have logged out successfully");
            response.sendRedirect("http://localhost:2020/1NH21MC056");
            System.out.println("Logged out");
        }
//        response.sendRedirect("http://localhost:2020/1NH21MC056/index.html?msg=success");
	}

}
