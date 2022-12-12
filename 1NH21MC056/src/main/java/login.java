
import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/HTML");
		PrintWriter out = response.getWriter();
		String email=request.getParameter("email1");
		String password=request.getParameter("password");
		System.out.print(email);
		System.out.print(password);
		String msg = " ";
		String admin="";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quizapp","root","");
			Statement stmt = con.createStatement();
			
			
		//	String strQuery = "select * from regist WHERE email='"
	       //         + email + "' and password1='" + password + "'";
			
			String strQuery = "select * from regist ";
			
			String user = "";
			
			String pass ="";
			
			String status="";
			
			Boolean bool = false;
			
			// session object 
			
			   HttpSession session=request.getSession();
			   
			   // end
			
	        Statement st = con.createStatement();
	        ResultSet rs = st.executeQuery(strQuery);
	        
	        while(rs.next()) {
	        	user = rs.getString("email");
	        	 pass = rs.getString("password1");
	        	 status = rs.getString("status");
	        //	out.print(user);
	        	 
	        	 if(user.trim().equals(email)) {
	        		 if(pass.trim().equals(password)){
	        			 bool = true;
	        			 out.print("hey ");
	        				session.setAttribute("userName", user);
	        		        session.setAttribute("userStatus", status);
	        		 }
	        	 }
	        }
	        
	        //out.print("hello world");
	        
	        
	        
//	        session created
	        
	      
	        
	     
	        
	        if(bool == true ) {
	        	
	      
	        	
	        
	        	response.sendRedirect("./dashbord/quizmain.jsp");
		        
//		        String isValid = (String)session.getAttribute("userName");
//		        String isStatus = (String)session.getAttribute("userStatus");
		        
		       
		        

	        }
	        else {
		        //	response.sendRedirect("login.html");
	            msg = "HELLO" + user + "!Your login is UNSUCESSFULL";
		        }
	        
	        
	        
	        
	        
	      

	        
	        

            System.out.println("\ntest :" + msg);
            con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
