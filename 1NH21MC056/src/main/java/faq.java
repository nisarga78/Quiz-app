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

@WebServlet("/faq")
public class faq extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public faq() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/HTML");
		PrintWriter out = response.getWriter();
		String user=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String message=request.getParameter("message");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quizapp","root","");
			Statement stmt=con.createStatement();
			
			String q1 = String.format("INSERT INTO faq (`user`,`email`,`phone`,`message`) VALUES ('%s','%s','%s','%s')",user,email,phone,message);
			int x = stmt.executeUpdate(q1);
			if (x > 0) {           
	            out.print("Successfully Inserted"); 
				response.sendRedirect("index.html");
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
