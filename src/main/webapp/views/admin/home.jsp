<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin | Home</title>
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="col-md-5">
			<table>
				<tr>
<!-- 					<td><a href="/">Home</a></td>

					<td><label>&nbsp; | &nbsp;</label></td>
 -->
					<td><a href="/">Registration</a></td>
				</tr>
			</table>
			<h2>Welcome Admin</h2>
		</div>
		<table class="table table-striped table-bordered table-hover">
			<thead style="background-color: #4f81bd; color: white;">
				<tr>
					<td>First Name</td>
					<td>Last Name</td>
					<td>Address1</td>
					<td>Address2</td>
					<td>City</td>
					<td>State</td>
					<td>Zip</td>
					<td>Country</td>
					<td>Date</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${users}">
	                <tr>
	                <td>${user.first_name}</td>
	                <td>${user.last_name}</td>
	                <td>${user.address_1}</td>
	                <td>${user.address_2}</td>
	                <td>${user.city}</td>
	                <td>${user.state}</td>
	                <td>${user.zip}</td>
	                <td>${user.country}</td>
	                <td>${user.date}</td>
	                </tr>
	            </c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>