<%@page import="com.tka.model.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Page</title>
<style type="text/css">
	body{
		background-color: silver;
	}
	h1{
		font-family: serif;
		color: red;
	}
	h2{
		font-family: cursive;
		color: maroon;
	}
	div{
		float: right;
	}
</style>
</head>
<body>
	<div>
		<a href="Welcome.jsp">Log Out</a>
	</div>
	<%
		Patient p = (Patient)request.getAttribute("Patient");
	%>
	<h1>Welcome, <%=p.getName() %></h1>
	<hr>
	<h2>Id : <%=p.getId() %></h2>
	<h2>Name : <%= p.getName() %></h2>
	<h2>Consultant Doctor : <%=p.getConsultantDoctor() %></h2>
	<h2>Contact Number : <%=p.getContactNumber() %></h2>
</body>
</html>