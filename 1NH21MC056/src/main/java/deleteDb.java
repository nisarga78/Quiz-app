

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


@WebServlet("/deleteDb")
public class deleteDb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public deleteDb() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizapp","root","");
			Statement stmt=con.createStatement();
			
	 
			String q1 = String.format("DELETE FROM result;");
			stmt.execute(q1);
		
			response.sendRedirect("http://localhost:2020/1NH21MC056/dashbord/quizmain.jsp?msg=success");
		
			}catch(Exception e) {
				System.out.print(e);
			}
	}

	
	
}
