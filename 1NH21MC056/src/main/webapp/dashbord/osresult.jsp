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
                            <h4>MCQ Quiz <span= class="text-primary">Answer !!</span></span></h4><span class="text-danger">Operating System</span>
                        </div>
                    </div>
                    <form action="../osquizsubmit" method="get">
                     
                    <%
                    int count = 0;
					int count2 = 0;
                    try{
						
						Class.forName("com.mysql.jdbc.Driver");
						Connection con = DriverManager.getConnection(  
								"jdbc:mysql://localhost:3306/quizapp","root","");
					
					    Statement stmt1 = con.createStatement();  
					    ResultSet rs = stmt1.executeQuery("SELECT addos.id,addos.qf1,addos.of1,addos.of2,addos.of3,addos.of4, addos.af1, result.question, result.uans FROM result INNER JOIN addos;"); 
					    
			            %>
			            
			            <%
										            
										   while (rs.next()) 
							             {  
											   String id2 = rs.getString("id");									           
											   String que = rs.getString("question");  								           
											   String q = rs.getString("qf1");
											   String of1 = rs.getString("of1");  
								               String of2 = rs.getString("of2");  
								               String of3 = rs.getString("of3");  
								               String of4 = rs.getString("of4"); 
								               String uns2 = rs.getString("uans");
								               String uns = rs.getString("uans");
					                       	  	String ans = rs.getString("af1");
								               
							               %>
                    					
                       						 
				                       
				                        <%
				                        if(id2.trim().equals(que)) {
				                        	count2++;
				                        	%>
				                        	<div class="question bg-white p-3 border-bottom">
				                       	 	<div class="d-flex flex-row align-items-center question-title">
				                       	  <!--    <h5 class="mt-1 ml-2"><span class="text-danger">Q. </span>  my val </h5> -->
				                           
				                        		 <h3> <span style='color:red;font-size:30px;font-weight:600'>Q. </span><% out.print(q); %></h3>
				                       			 </div>
				                        	 <div class="ans ml-2">
							                        	<%
								                        		if(ans.trim().equals(of1)){
								                        			%>
								                        			<input type="radio" name="Q" value="" > <label><span class="text-success"><% out.print(of1); %></span> </label><br>
								                        			
								                        			<%
								                        		}else if(uns.trim().equals(of1) && !ans.trim().equals(of1)) {%>
								                        			<input type="radio" name="Q" value="" > <label><span class="text-danger"><strong><% out.print(of1); %></strong></span> </label><br>
								                        			
								                        			
								                        		<%	} 
								                        	
								                        		else{ %>
					                        					<input type="radio" name="Q" value="" > <label><span class=""><% out.print(of1); %></span> </label><br>
					                        					<%
								                        		}
				                        			
							                        	
				                        			if(ans.trim().equals(of2)){
				                        			%>
				                        			 <input type="radio" name="Q" value="" > <label><span class="text-success"><% out.print(of2); %></span> </label><br>
				                        			<%
				                        		}else if(uns.trim().equals(of2) && !ans.trim().equals(of2)){ %>
				                        		
				                      				<input type="radio" name="Q" value="" > <label><span class="text-danger"><strong><% out.print(of2); %></strong></span> </label><br>
		                        		
				                        		<%}else{%>
				                        			
				                        			 <input type="radio" name="Q" value="" > <label><span class=""><% out.print(of2); %></span> </label><br>
				                        			
				                        			
				                        			<%
				                        		}
				                        			
				                        			
				                        			
				                        			
				                        			
				                        			if(ans.trim().equals(of3)){
				                        			%>
				                        			<input type="radio" name="Q" value="" > <label><span class="text-success"><% out.print(of3); %></span> </label><br>
				                        			<%
				                        		}else if(uns.trim().equals(of3) && !ans.trim().equals(of3)){
				                        			%>
				                        			<input type="radio" name="Q" value="" > <label><span class="text-danger"><strong><% out.print(of3); %></strong></span> </label><br>
				                        			
				                        			
				                        			<%}else{ %>
				                        			<input type="radio" name="Q" value="" > <label><span class=""><% out.print(of3); %></span> </label><br>
				                        			<%
				                        		}
				                        			
				                        			
				                        			if(ans.trim().equals(of4)){
					                        			%>
				                        	
				                        			<input type="radio" name="Q" value="" > <label><span class="text-success"><% out.print(of4); %></span> </label><br>
				                        	
				                        	<% }else if(uns.trim().equals(of4) && !ans.trim().equals(of4)) { %>
				                        		   <input type="radio" name="Q" value="" > <label><span class="text-danger"><strong><% out.print(of4); %></strong></span> </label><br>
				                        		
				                        	
				                        	<%}else{ %>
                                           
                                                   <input type="radio" name="Q" value="" > <label><span class=""><% out.print(of4); %></span> </label><br>
                                               
                                            <% } %>
                                            
                                            
											
										</div>
										</div>
				                        	<% 
				                        	
				                        	
				                       	  
				                       	  if(uns.trim().equals(ans)) {
				                       		  count++;
				                       	  }
				                        	
				                        }
				                        %>
				                        		
				                        	
						  <%
						  
							             }
			            		
			            		 
 						}catch(Exception e){	
                   	 	}
			       
			       %>
                    <div class="p-3 bg-white">
                    	<h5 style='color:green'> Total Question => <% out.print(count2); %></h5>
	  					<h5 style='color:green'> Your Score => <% out.print(count); %></h5>  
	  					<h5 style='color:red'> Wrong Answer=> <% out.print(count2-count); %></h5>
	  					<div class="d-flex justify-content-end">
                    		<a class="btn btn-warning" href="http://localhost:2020/1NH21MC056/deleteDb" role="button">Back</a>
                    	</div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

 <%@ include file="footer.jsp" %>