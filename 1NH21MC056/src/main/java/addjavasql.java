

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

@WebServlet("/addjavasql")
public class addjavasql extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public addjavasql() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("html/text");
		PrintWriter out = response.getWriter();
		String qf1 = request.getParameter("qf1");
		String of1 = request.getParameter("of1");
		String of2 = request.getParameter("of2");
		String of3 = request.getParameter("of3");
		String of4 = request.getParameter("of4");
		String af1 = request.getParameter("af1");
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizapp","root","");
			Statement stmt=con.createStatement();
			
			String q1 = String.format("INSERT INTO `addjava` (`id`, `qf1`, `of1`, `of2`, `of3`, `of4`, `af1`) VALUES (NULL, '%s', '%s', '%s', '%s', '%s', '%s');",qf1,of1,of2,of3,of4,af1);
			int send1 = stmt.executeUpdate(q1);
			
			 
			 if (send1 >0) {
				 response.sendRedirect("http://localhost:2020/1NH21MC056/dashbord/addjavamcq.jsp?msg=success");
		
		     } else {
		    	 response.sendRedirect("http://localhost:2020/1NH21MC056/dashbord/addjavamcq.jsp?msg=fail");
		        	
		     }
			
			out.close();
		}catch(Exception e) {
			System.out.print(e);
		}
		
	}

}
