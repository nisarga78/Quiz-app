

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registration
 */
@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String uname = request.getParameter("uname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String status="admin";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/quizapp","root","");
			Statement stmt = con.createStatement();
			
			//inserting data into database
			String q1 = String.format("INSERT INTO `regist` (`id`, `username`, `phone`, `email`, `password1`, `status`) VALUES (NULL, '%s', '%s', '%s', '%s', '%s');",uname,phone,email,password,status);
			int x = stmt.executeUpdate(q1);
			if (x > 0) {
	            out.print("Successfully Inserted");
				response.sendRedirect("login.html");
			}
	        else           
	            out.print("Insert Failed");
             
            con.close();
						 
		} catch(Exception e)
        {
            System.out.println(e);
        }

	}

}
