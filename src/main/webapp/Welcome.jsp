<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<style type="text/css">
div{
	background-color: rgb(177,156,217);
}
li {
	display: inline-block;
	margin: 0 10px;
	width: 100px;
	height: 50px;
	text-align: center;
	font-size:large;
	font-weight:bold;
	padding-top: 25px;
}
a{
	color: white;
}
a:link{
	text-decoration: none;
}
h1{
	text-align: center;
	color: green;
}
img{
	margin-left: 350px;
}
.logo{
	float:left;
	background-color: white;
	margin:0px;
}
</style>
</head>
<body>
	<div class="logo">
		<img class="logo" src="/images/JBK Logo.jpeg" width="60px" height="60px">
	</div>
	<h1>Hospital Management System</h1>
	<div>
		<ul>
			<li><a href="">Home</a></li>
			<li><a href="">Doctor</a></li>
			<li><a href="Patient.jsp">Patient</a></li>
		</ul>
	</div>

	<img src="/images/hospital.jpg" width="300px" height="300px">
</body>
</html>