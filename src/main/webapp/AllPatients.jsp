<%@page import="com.tka.service.HospitalService"%>
<%@page import="com.tka.model.Patient"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Data</title>
<style type="text/css">
	div{
		float : right;
	}
</style>
</head>
<body>
	<div>
		<a href="Welcome.jsp">Home</a>
	</div>
	<%
		List<Patient> list = (List<Patient>)request.getAttribute("list");
	%>
	<table border=2 align="center">
		<tr>
			<th> Id</th>
			<th> Name</th>
			<th> Consultant Doctor</th>
			<th> Contact Number</th>
		</tr>
		<%
			for(Patient p : list){
		%>
			<tr>
				<td><%=p.getId() %></td>
				<td><%=p.getName() %></td>
				<td><%=p.getConsultantDoctor() %></td>
				<td><%=p.getContactNumber() %></td>
			</tr>
			<%
				}
			%>
	</table>
</body>
</html>