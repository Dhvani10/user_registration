<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<style>
.error {
	color: red;
	font-weight: bold;
}
</style>
</head>

<script type="text/javascript">
	function validateUserFormData(e) {
		errors = [];
		var first_name = document.getElementById("first_name").value;
		if (first_name == "" || first_name == null) {
			errors.push("First name is required.");
		}

		var last_name = document.getElementById("last_name").value;
		if (last_name == "" || last_name == null) {
			errors.push("Last name is required.");
		}

		var address_1 = document.getElementById("address_1").value;
		if (address_1 == "" || address_1 == null) {
			errors.push("Address line 1 is required.");
		}

		var address_2 = document.getElementById("address_2").value;
		if (address_2 == "" || address_2 == null) {
			errors.push("Address line 2 is required.");
		}

		var city = document.getElementById("city").value;
		if (city == "" || city == null) {
			errors.push("City is required.");
		}

		var state = document.getElementById("state").value;
		if (state == "" || state == null) {
			errors.push("State is required.");
		}

		var zip = document.getElementById("zip").value;
		if (zip == "" || zip == null) {
			errors.push("Zip is required.");
		}

		if (5 == zip.length || zip.length == 9) {
		} else {
			errors
					.push("Please check the length of the zip code. Allowed length is 5 or 9");
		}

		var country = document.getElementById("country").value;
		if (country == "" || country == null) {
			errors.push("Country is required.");
		}

		if (errors.length > 0) {
			alert("Error(s): " + errors);
			return false;
		}
	}

	function checkData(selector) {
		var selectorValue = document.getElementById(selector).value;
		if (selectorValue == "" || selectorValue == null) {
			alert(selector + " is required.");
		}

		if (selector == "zip") {
			var zip = document.getElementById(selector).value;
			if (zip.length == 5 || zip.length == 9) {
			} else {
				alert("Please check the length of the zip code. Allowed length is 5 or 9");
			}
		}
	}
</script>

<body>
	<div class="container">
		<div class="col-md-5">
			<table>
				<tr>
					<td><a href="/">Home</a></td>

					<td><label>&nbsp; | &nbsp;</label></td>

					<td><a href="/admin">Admin</a></td>
				</tr>
			</table>
			<h1>Registration</h1>

			<form:form action="${userAction}" modelAttribute="user" method="POST">
				<table class="table">
					<tr>
						<td><label>Firstname</label></td>
						<td><form:input path="first_name"
								placeholder="Enter Firstname" onblur="checkData('first_name')"
								class="form-control" /> <form:errors path="first_name"
								cssClass="error" /></td>
					</tr>

					<tr>
						<td><label>Lastname</label></td>
						<td><form:input path="last_name"
								onblur="checkData('last_name')" placeholder="Enter Lastname"
								class="form-control" /> <form:errors path="last_name" /></td>
					</tr>

					<tr>
						<td><label>Address Line 1</label></td>
						<td><form:input path="address_1"
								onblur="checkData('address_1')"
								placeholder="Enter address line 1" class="form-control" /> <form:errors
								path="address_1" /></td>
					</tr>

					<tr>
						<td><label>Address Line 2</label></td>
						<td><form:input path="address_2"
								onblur="checkData('address_2')"
								placeholder="Enter address line 2" class="form-control" /> <form:errors
								path="address_2" /></td>
					</tr>

					<tr>
						<td><label>City</label></td>
						<td><form:input path="city" placeholder="Enter city name"
								onblur="checkData('city')" class="form-control" /> <form:errors
								path="city" /></td>
					</tr>

					<tr>
						<td><label>State</label></td>
						<td><form:input path="state" placeholder="Enter state name"
								onblur="checkData('state')" class="form-control" /> <form:errors
								path="state" /></td>
					</tr>

					<tr>
						<td><label>Zip Code</label></td>
						<td><form:input path="zip" placeholder="Enter zip code"
								onblur="checkData('zip')" class="form-control" /> <form:errors
								path="zip" /></td>
					</tr>

					<tr>
						<td><label>Country</label></td>
						<td><form:input path="country" onblur="checkData('country')"
								placeholder="Enter country name" class="form-control" value="US"
								disabled="true" /> <form:errors path="country" /></td>
					</tr>

					<tr>
						<td></td>
						<td><input type="submit"
							onclick="return validateUserFormData();" value="Submit"
							class="btn btn-submit" /></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>