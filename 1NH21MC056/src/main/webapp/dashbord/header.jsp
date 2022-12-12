

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
   
<%
    String isvalid = (String)session.getAttribute("userName");

   
   String isStatus = (String)session.getAttribute("userStatus");
  // out.print(isStatus);
  
  	if(isvalid != null){
  	
  	
  		
  	
    
    
%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="quizstyle.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">QuizApp</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="quizmain.jsp">Home</a>
        </li>
        
<% if(isStatus.equals("admin")){  %>
        <li class="nav-item dropdown">
        
      
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Add MCQ
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="addosmcq.jsp">OS MCQ</a></li>
            <li><a class="dropdown-item" href="addcnmcq.jsp">CN MCQ</a></li>
            <li><a class="dropdown-item" href="addjavamcq.jsp">JAVA MCQ</a></li>
          </ul>
        </li>
<% } %>     
      </ul>
    </div>
    <div class="d-flex justify-content-end">
           <a class="btn btn-danger" href="http://localhost:2020/1NH21MC056/logOut" role="button">Logout</a>
    </div>
  </div>
</nav>

