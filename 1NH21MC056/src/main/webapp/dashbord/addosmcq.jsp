<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
    <%@ include file="header.jsp" %>
    <div class="container">
    <%! int count=0; %>
    <h2 class="my-3">Add Operating System Quiz Question <span class="text-danger">!!</span><%=" "+count %>  </h2>
	    <div class="row">
	    	<form action="../addossql" method="post">
			  <div class="mb-3 m-2">
			    <label for="exampleInputEmail1" class="form-label ">Enter Question</label>
			    <input type="text" name="qf1" class="form-control m-1" placeholder="Enter Question?">
			    <input type="text" name="of1" class="form-control m-1" placeholder="Enter Opction A">
			    <input type="text" name="of2" class="form-control m-1" placeholder="Enter Opction B">
			    <input type="text" name="of3" class="form-control m-1" placeholder="Enter Opction C">
			    <input type="text" name="of4" class="form-control m-1" placeholder="Enter Opction D">
			    <input type="text" name="af1" class="form-control m-1" placeholder="Enter Answer">			   
			  </div>
			  <% count++; %>
			  <button type="submit" class="btn btn-primary">Submit</button>
			  <button class="btn btn-danger" type="reset">Reset</button>
			</form>
	    </div>
    </div>
    
    <div class="col-sm-10 mx-auto mt-4">
                		<div class="row mt-4 shadow">
                			
                			<%
								try{
								
									Class.forName("com.mysql.jdbc.Driver");
									Connection con = DriverManager.getConnection(  
											"jdbc:mysql://localhost:3306/quizapp","root","");
								
								    Statement stmt1 = con.createStatement();  
						            ResultSet rs = stmt1.executeQuery("select * from addos"); 
						            
						            Boolean bool = false; %>
						            
						            <table class="table">
									  <thead>
									    <tr>
									      <th class="text-center" scope="col">Question</th>
									      <th class="text-center" scope="col">Opction A</th>
									      <th class="text-center" scope="col">Opction B</th>
									      <th class="text-center" scope="col">Opction C</th>
									      <th class="text-center" scope="col">Opction D</th>
									      <th class="text-center" scope="col">Answer</th>
									      <th class="text-center text-danger" scope="col">#</th>
									    </tr>
									  </thead>
									  <tbody>
										
									<%
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
							               
											    <tr>
												      <td class="text-center" ><% out.print(qf1); %></td>
												      <td class="text-center"> <% out.print(of1); %> </td>
												      <td class="text-center"> <% out.print(of2); %></td>
												      <td class="text-center"> <% out.print(of3); %></td>
												      <td class="text-center"> <% out.print(of4); %> </td>
												      <td class="text-center"> <% out.print(af1); %> </td>
												      <td class="text-center"> <a href="http://localhost:2020/1NH21MC056/deleteitem?id=<% out.print(id); %>" class="btn btn-danger"> Delete </a> </td>
											    </tr>
							               <%   
							             
							             
							             }  
									   
									
									   
								
								}
                				catch(Exception e){
									
								}
                	           
							%>
								  				</tbody>
											</table>
                		</div>
                	
</div>
    <%@ include file="footer.jsp" %>
