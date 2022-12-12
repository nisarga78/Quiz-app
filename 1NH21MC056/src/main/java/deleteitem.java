

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

@WebServlet("/deleteitem")
public class deleteitem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public deleteitem() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String id1 = request.getParameter("id");
		
		
		int id = Integer.parseInt(id1);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/quizapp","root","");
			Statement stmt = con.createStatement();
			
			out.println(id);
		
			//inserting data into database
			String q1 = String.format("DELETE FROM `addos` WHERE `addos`.`id` = '%d'",id);
			int x = stmt.executeUpdate(q1);
			if (x > 0)   
			{
				  out.print("Successfully Inserted"); 
				  response.sendRedirect("http://localhost:2020/1NH21MC056/dashbord/addosmcq.jsp?msg=success");
			} 
	        else  
	        {
	        	out.print("Insert Failed");
	        	response.sendRedirect("http://localhost:2020/1NH21MC056/dashbord/addosmcq.jsp?msg=false");
	        }           
             
            con.close();
		} catch(Exception e)
        {
            System.out.println(e);
        }
	}

}
