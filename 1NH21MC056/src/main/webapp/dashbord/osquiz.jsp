<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
	 <%@ include file="header.jsp" %>
<div class="container mt-5">
        <div class="d-flex justify-content-center row">
            <div class="col-md-10 col-lg-10">
                <div class="border">
                    <div class="question bg-white p-3 border-bottom">
                        <div class="d-flex flex-row justify-content-between align-items-center mcq">
                            <h4>MCQ Quiz !!</h4><span class="text-danger">Operating System</span>
                        </div>
                    </div>
                    <form action="../osquizsubmit" method="get">
                     
                    <%
                    try{
						
						Class.forName("com.mysql.jdbc.Driver");
						Connection con = DriverManager.getConnection(  
								"jdbc:mysql://localhost:3306/quizapp","root","");
					
					    Statement stmt1 = con.createStatement();  
			            ResultSet rs = stmt1.executeQuery("select * from addos"); 
			            %>
			            
			            <%
										int n = 1;		            
										   while (rs.next()) 
							             {  
										     String id=rs.getString("id");
										   	 String qf1 = rs.getString("qf1");
							                 String of1 = rs.getString("of1");  
							                 String of2 = rs.getString("of2");  
							                 String of3 = rs.getString("of3");  
							                 String of4 = rs.getString("of4");  
							                 String af1 = rs.getString("af1");  
							               %>
                    					<div class="question bg-white p-3 border-bottom">
                       						 <div class="d-flex flex-row align-items-center question-title">
				                         <!--    <h5 class="mt-1 ml-2"><span class="text-danger">Q. </span>  my val </h5> -->
				                           
				                         <h3> <span style='color:red;font-size:30px;font-weight:600'>Q. </span><% out.print(qf1); %></h3>
				                        </div>
				                        <div class="ans ml-2">
				                        		
				                        	<input type="radio" name="Q<% out.print(n); %>" value="<%out.println(id+":"+of1);%>" > <label><span><% out.print(of1); %></span> </label><br>
                                            <input type="radio" name="Q<% out.print(n); %>" value="<%out.println(id+":"+of2);%>" > <label><span><% out.print(of2); %></span> </label><br>
                                            <input type="radio" name="Q<% out.print(n); %>" value="<%out.println(id+":"+of3);%>" > <label><span><% out.print(of3); %></span> </label><br>
                                            <input type="radio" name="Q<% out.print(n); %>" value="<%out.println(id+":"+of4);%>" > <label><span><% out.print(of4); %></span> </label>
											
										</div>
										</div>
						  <%
						  n++;
							             }
										   
			            		out.println("<input type='hidden' name='total_questions' value='"+(n-1)+"' />");
			            		
			            		 
 						}catch(Exception e){	
                   	 	}
			       
			       %>
                    <div class="p-3 bg-white">
                    	<input type="submit" class="btn pt-1 pl-3 pr-3 pb-1 btn-success mt-4 mb-3" name="register" value="Submit">
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

 <%@ include file="footer.jsp" %>