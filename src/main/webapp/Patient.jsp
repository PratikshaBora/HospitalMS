<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient</title>
<style type="text/css">
	li{
		display: inline-block;
		margin: 20px;
	}
	ul{
		type:none;
	}
</style>
</head>
<body>
	<h1> Health is Wealth</h1>
	<div>
		<ul>
			<li><a href="PatientLogin.jsp">Login</a></li>
			<li><a href="PatientRegister.jsp">Register</a></li>
			<li><a href="${pageContext.request.contextPath}/allData">Data</a>  
		</ul>
	</div>
	
</body>
</html>