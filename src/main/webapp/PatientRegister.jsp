<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Registration Form</title>
</head>
<body>
	<form action="registerPatient" method="post">
		<table>
			<tr>
				<td> Name :</td>
				<td> <input type="text" name="name"></td>
			</tr>
			<tr>
				<td> Contact Number :</td>
				<td> <input type="text" name="contactNumber"></td>
			</tr>
			<tr>
				<td> Consultant Doctor : </td>
				<td> <input type="text" name="consultantDoctor"></td>
			</tr>
			<tr>
				<td> User Name : </td>
				<td> <input type="text" name="username"></td>
			</tr>
			<tr>
				<td> Password :</td>
				<td> <input type="password" name="password"></td>
			</tr>
			<tr>
				<td> <input type="submit" value="submit"></td>
			</tr>			
		</table>
	</form>
</body>
</html>