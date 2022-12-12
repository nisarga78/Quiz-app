

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/cnquizsubmit")
public class cnquizsubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public cnquizsubmit() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String num1 = request.getParameter("total_questions");
		
		int num = Integer.parseInt(num1);
		
		List<String> mylist = new ArrayList<>();
		
		String str = "";
		
		for(int i=1,j=0; i<=num; i++,j++) {
			str= "Q"+i;
			
			String myval = request.getParameter(str);
			
			mylist.add(myval);
			
			
			str="";
		}
		
		try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizapp","root","");
		Statement stmt=con.createStatement();
		
		for(String val : mylist) {
			String arr[] = val.split(":");
			String id = arr[0];
			String ans = arr[1];
			  Statement stmt1 = con.createStatement();  
			 String q1 = String.format("INSERT INTO `result` (`id`, `question`, `uans`) VALUES (NULL, '%s','%s');",id,ans);
			 stmt1.execute(q1);
		}
		response.sendRedirect("http://localhost:2020/1NH21MC056/dashbord/cnresult.jsp?msg=success");
	
		}catch(Exception e) {
			System.out.print(e);
		}
		
		
		
		
		
	}

}
